; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_recv_slave_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_recv_slave_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb0899_state* }
%struct.stb0899_state = type { i32 }
%struct.dvb_diseqc_slave_reply = type { i32, i8** }

@ETIMEDOUT = common dso_local global i32 0, align 4
@STB0899_DISRX_ST0 = common dso_local global i32 0, align 4
@RXEND = common dso_local global i32 0, align 4
@STB0899_DISRX_ST1 = common dso_local global i32 0, align 4
@FIFOBYTENBR = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@STB0899_DISFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* @stb0899_recv_slave_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_recv_slave_reply(%struct.dvb_frontend* %0, %struct.dvb_diseqc_slave_reply* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_diseqc_slave_reply*, align 8
  %6 = alloca %struct.stb0899_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_diseqc_slave_reply* %1, %struct.dvb_diseqc_slave_reply** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.stb0899_state*, %struct.stb0899_state** %12, align 8
  store %struct.stb0899_state* %13, %struct.stb0899_state** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %15 = call i64 @stb0899_wait_diseqc_rxidle(%struct.stb0899_state* %14, i32 100)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ETIMEDOUT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %68

20:                                               ; preds = %2
  %21 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %22 = load i32, i32* @STB0899_DISRX_ST0, align 4
  %23 = call i8* @stb0899_read_reg(%struct.stb0899_state* %21, i32 %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @RXEND, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @STB0899_GETFIELD(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %65

29:                                               ; preds = %20
  %30 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %31 = load i32, i32* @STB0899_DISRX_ST1, align 4
  %32 = call i8* @stb0899_read_reg(%struct.stb0899_state* %30, i32 %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @FIFOBYTENBR, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @STB0899_GETFIELD(i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ugt i64 %38, 8
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i32, i32* @EOVERFLOW, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %66

43:                                               ; preds = %29
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.dvb_diseqc_slave_reply*, %struct.dvb_diseqc_slave_reply** %5, align 8
  %46 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, %struct.dvb_diseqc_slave_reply* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %61, %43
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %53 = load i32, i32* @STB0899_DISFIFO, align 4
  %54 = call i8* @stb0899_read_reg(%struct.stb0899_state* %52, i32 %53)
  %55 = load %struct.dvb_diseqc_slave_reply*, %struct.dvb_diseqc_slave_reply** %5, align 8
  %56 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, %struct.dvb_diseqc_slave_reply* %55, i32 0, i32 1
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  store i8* %54, i8** %60, align 8
  br label %61

61:                                               ; preds = %51
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %47

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64, %20
  store i32 0, i32* %3, align 4
  br label %68

66:                                               ; preds = %40
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %65, %17
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @stb0899_wait_diseqc_rxidle(%struct.stb0899_state*, i32) #1

declare dso_local i8* @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_GETFIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
