; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_zl10353.c_zl10353_read_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_zl10353.c_zl10353_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.zl10353_state* }
%struct.zl10353_state = type { i32 }

@STATUS_6 = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@STATUS_7 = common dso_local global i32 0, align 4
@STATUS_8 = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @zl10353_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zl10353_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.zl10353_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.zl10353_state*, %struct.zl10353_state** %11, align 8
  store %struct.zl10353_state* %12, %struct.zl10353_state** %6, align 8
  %13 = load %struct.zl10353_state*, %struct.zl10353_state** %6, align 8
  %14 = load i32, i32* @STATUS_6, align 4
  %15 = call i32 @zl10353_read_register(%struct.zl10353_state* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EREMOTEIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %104

20:                                               ; preds = %2
  %21 = load %struct.zl10353_state*, %struct.zl10353_state** %6, align 8
  %22 = load i32, i32* @STATUS_7, align 4
  %23 = call i32 @zl10353_read_register(%struct.zl10353_state* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EREMOTEIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %104

28:                                               ; preds = %20
  %29 = load %struct.zl10353_state*, %struct.zl10353_state** %6, align 8
  %30 = load i32, i32* @STATUS_8, align 4
  %31 = call i32 @zl10353_read_register(%struct.zl10353_state* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EREMOTEIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %104

36:                                               ; preds = %28
  %37 = load i32*, i32** %5, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* @FE_HAS_CARRIER, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 2
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* @FE_HAS_VITERBI, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %46
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* @FE_HAS_LOCK, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %59, %55
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, 16
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32, i32* @FE_HAS_SYNC, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %68, %64
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, 64
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %77, %73
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @FE_HAS_CARRIER, align 4
  %86 = load i32, i32* @FE_HAS_VITERBI, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @FE_HAS_SYNC, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %84, %89
  %91 = load i32, i32* @FE_HAS_CARRIER, align 4
  %92 = load i32, i32* @FE_HAS_VITERBI, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @FE_HAS_SYNC, align 4
  %95 = or i32 %93, %94
  %96 = icmp ne i32 %90, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %82
  %98 = load i32, i32* @FE_HAS_LOCK, align 4
  %99 = xor i32 %98, -1
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, %99
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %82
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %33, %25, %17
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @zl10353_read_register(%struct.zl10353_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
