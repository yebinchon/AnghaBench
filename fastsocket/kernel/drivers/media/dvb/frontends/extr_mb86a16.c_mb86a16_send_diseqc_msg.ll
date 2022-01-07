; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a16.c_mb86a16_send_diseqc_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a16.c_mb86a16_send_diseqc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mb86a16_state* }
%struct.mb86a16_state = type { i32 }
%struct.dvb_diseqc_master_cmd = type { i32, i32* }

@MB86A16_DCC1 = common dso_local global i32 0, align 4
@MB86A16_DCC1_DISTA = common dso_local global i32 0, align 4
@MB86A16_DCCOUT = common dso_local global i32 0, align 4
@MB86A16_TONEOUT2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MB86A16_DCCOUT_DISEN = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@MB86A16_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"I2C transfer error\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @mb86a16_send_diseqc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb86a16_send_diseqc_msg(%struct.dvb_frontend* %0, %struct.dvb_diseqc_master_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %6 = alloca %struct.mb86a16_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_diseqc_master_cmd* %1, %struct.dvb_diseqc_master_cmd** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.mb86a16_state*, %struct.mb86a16_state** %10, align 8
  store %struct.mb86a16_state* %11, %struct.mb86a16_state** %6, align 8
  %12 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %13 = load i32, i32* @MB86A16_DCC1, align 4
  %14 = load i32, i32* @MB86A16_DCC1_DISTA, align 4
  %15 = call i64 @mb86a16_write(%struct.mb86a16_state* %12, i32 %13, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %87

18:                                               ; preds = %2
  %19 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %20 = load i32, i32* @MB86A16_DCCOUT, align 4
  %21 = call i64 @mb86a16_write(%struct.mb86a16_state* %19, i32 %20, i32 0)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %87

24:                                               ; preds = %18
  %25 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %26 = load i32, i32* @MB86A16_TONEOUT2, align 4
  %27 = call i64 @mb86a16_write(%struct.mb86a16_state* %25, i32 %26, i32 4)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %87

30:                                               ; preds = %24
  store i32 24, i32* %8, align 4
  %31 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 5
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %30
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %93

43:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %66, %43
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %44
  %51 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %54 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @mb86a16_write(%struct.mb86a16_state* %51, i32 %52, i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %87

63:                                               ; preds = %50
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %44

69:                                               ; preds = %44
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 144
  store i32 %71, i32* %7, align 4
  %72 = call i32 @msleep_interruptible(i32 10)
  %73 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %74 = load i32, i32* @MB86A16_DCC1, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i64 @mb86a16_write(%struct.mb86a16_state* %73, i32 %74, i32 %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %87

79:                                               ; preds = %69
  %80 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %81 = load i32, i32* @MB86A16_DCCOUT, align 4
  %82 = load i32, i32* @MB86A16_DCCOUT_DISEN, align 4
  %83 = call i64 @mb86a16_write(%struct.mb86a16_state* %80, i32 %81, i32 %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %87

86:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %93

87:                                               ; preds = %85, %78, %62, %29, %23, %17
  %88 = load i32, i32* @verbose, align 4
  %89 = load i32, i32* @MB86A16_ERROR, align 4
  %90 = call i32 @dprintk(i32 %88, i32 %89, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* @EREMOTEIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %87, %86, %40
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @mb86a16_write(%struct.mb86a16_state*, i32, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
