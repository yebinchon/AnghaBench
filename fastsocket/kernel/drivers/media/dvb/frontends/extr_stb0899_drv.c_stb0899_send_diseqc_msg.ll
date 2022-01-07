; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_send_diseqc_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_send_diseqc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb0899_state* }
%struct.stb0899_state = type { i32 }
%struct.dvb_diseqc_master_cmd = type { i32, i64* }

@EINVAL = common dso_local global i32 0, align 4
@STB0899_DISCNTRL1 = common dso_local global i32 0, align 4
@DISPRECHARGE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@STB0899_DISFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @stb0899_send_diseqc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_send_diseqc_msg(%struct.dvb_frontend* %0, %struct.dvb_diseqc_master_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %6 = alloca %struct.stb0899_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_diseqc_master_cmd* %1, %struct.dvb_diseqc_master_cmd** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.stb0899_state*, %struct.stb0899_state** %10, align 8
  store %struct.stb0899_state* %11, %struct.stb0899_state** %6, align 8
  %12 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 8
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %69

19:                                               ; preds = %2
  %20 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %21 = load i32, i32* @STB0899_DISCNTRL1, align 4
  %22 = call i64 @stb0899_read_reg(%struct.stb0899_state* %20, i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* @DISPRECHARGE, align 4
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @STB0899_SETFIELD_VAL(i32 %23, i64 %24, i32 1)
  %26 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %27 = load i32, i32* @STB0899_DISCNTRL1, align 4
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @stb0899_write_reg(%struct.stb0899_state* %26, i32 %27, i64 %28)
  store i64 0, i64* %8, align 8
  br label %30

30:                                               ; preds = %54, %19
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %31, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %30
  %38 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %39 = call i64 @stb0899_wait_diseqc_fifo_empty(%struct.stb0899_state* %38, i32 10)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @ETIMEDOUT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %69

44:                                               ; preds = %37
  %45 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %46 = load i32, i32* @STB0899_DISFIFO, align 4
  %47 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %48 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @stb0899_write_reg(%struct.stb0899_state* %45, i32 %46, i64 %52)
  br label %54

54:                                               ; preds = %44
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %8, align 8
  br label %30

57:                                               ; preds = %30
  %58 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %59 = load i32, i32* @STB0899_DISCNTRL1, align 4
  %60 = call i64 @stb0899_read_reg(%struct.stb0899_state* %58, i32 %59)
  store i64 %60, i64* %7, align 8
  %61 = load i32, i32* @DISPRECHARGE, align 4
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @STB0899_SETFIELD_VAL(i32 %61, i64 %62, i32 0)
  %64 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %65 = load i32, i32* @STB0899_DISCNTRL1, align 4
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @stb0899_write_reg(%struct.stb0899_state* %64, i32 %65, i64 %66)
  %68 = call i32 @msleep(i32 100)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %57, %41, %16
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i64, i32) #1

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i64) #1

declare dso_local i64 @stb0899_wait_diseqc_fifo_empty(%struct.stb0899_state*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
