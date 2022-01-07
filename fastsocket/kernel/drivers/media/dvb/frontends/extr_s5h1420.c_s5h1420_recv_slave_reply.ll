; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s5h1420.c_s5h1420_recv_slave_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s5h1420.c_s5h1420_recv_slave_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.s5h1420_state* }
%struct.s5h1420_state = type { i32 }
%struct.dvb_diseqc_slave_reply = type { i32, i32, i32* }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* @s5h1420_recv_slave_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5h1420_recv_slave_reply(%struct.dvb_frontend* %0, %struct.dvb_diseqc_slave_reply* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_diseqc_slave_reply*, align 8
  %5 = alloca %struct.s5h1420_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_diseqc_slave_reply* %1, %struct.dvb_diseqc_slave_reply** %4, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.s5h1420_state*, %struct.s5h1420_state** %12, align 8
  store %struct.s5h1420_state* %13, %struct.s5h1420_state** %5, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  %15 = call i32 @s5h1420_readreg(%struct.s5h1420_state* %14, i32 59)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  %17 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %16, i32 59, i32 130)
  %18 = call i32 @msleep(i32 15)
  %19 = load i32, i32* @jiffies, align 4
  %20 = load %struct.dvb_diseqc_slave_reply*, %struct.dvb_diseqc_slave_reply** %4, align 8
  %21 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, %struct.dvb_diseqc_slave_reply* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @HZ, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sdiv i32 %24, 1000
  %26 = add nsw i32 %19, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %39, %2
  %29 = load i32, i32* @jiffies, align 4
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @time_before(i32 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  %35 = call i32 @s5h1420_readreg(%struct.s5h1420_state* %34, i32 59)
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %41

39:                                               ; preds = %33
  %40 = call i32 @msleep(i32 5)
  br label %28

41:                                               ; preds = %38, %28
  %42 = load i32, i32* @jiffies, align 4
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @time_after(i32 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @ETIMEDOUT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  br label %90

49:                                               ; preds = %41
  %50 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  %51 = call i32 @s5h1420_readreg(%struct.s5h1420_state* %50, i32 73)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %10, align 4
  br label %90

56:                                               ; preds = %49
  %57 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  %58 = call i32 @s5h1420_readreg(%struct.s5h1420_state* %57, i32 59)
  %59 = and i32 %58, 112
  %60 = ashr i32 %59, 4
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ugt i64 %62, 8
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @EOVERFLOW, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  br label %90

67:                                               ; preds = %56
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.dvb_diseqc_slave_reply*, %struct.dvb_diseqc_slave_reply** %4, align 8
  %70 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, %struct.dvb_diseqc_slave_reply* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %86, %67
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 61, %77
  %79 = call i32 @s5h1420_readreg(%struct.s5h1420_state* %76, i32 %78)
  %80 = load %struct.dvb_diseqc_slave_reply*, %struct.dvb_diseqc_slave_reply** %4, align 8
  %81 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, %struct.dvb_diseqc_slave_reply* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %79, i32* %85, align 4
  br label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %71

89:                                               ; preds = %71
  br label %90

90:                                               ; preds = %89, %64, %53, %46
  %91 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %91, i32 59, i32 %92)
  %94 = call i32 @msleep(i32 15)
  %95 = load i32, i32* %10, align 4
  ret i32 %95
}

declare dso_local i32 @s5h1420_readreg(%struct.s5h1420_state*, i32) #1

declare dso_local i32 @s5h1420_writereg(%struct.s5h1420_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i64 @time_after(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
