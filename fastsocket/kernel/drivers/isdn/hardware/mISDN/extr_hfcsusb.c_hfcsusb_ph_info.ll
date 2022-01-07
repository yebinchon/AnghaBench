; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcsusb.c_hfcsusb_ph_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcsusb.c_hfcsusb_ph_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfcsusb = type { %struct.TYPE_11__*, i32, %struct.dchannel }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.dchannel = type { %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.ph_info = type { %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@MPH_INFORMATION_IND = common dso_local global i32 0, align 4
@MISDN_ID_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfcsusb*)* @hfcsusb_ph_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfcsusb_ph_info(%struct.hfcsusb* %0) #0 {
  %2 = alloca %struct.hfcsusb*, align 8
  %3 = alloca %struct.ph_info*, align 8
  %4 = alloca %struct.dchannel*, align 8
  %5 = alloca i32, align 4
  store %struct.hfcsusb* %0, %struct.hfcsusb** %2, align 8
  %6 = load %struct.hfcsusb*, %struct.hfcsusb** %2, align 8
  %7 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %6, i32 0, i32 2
  store %struct.dchannel* %7, %struct.dchannel** %4, align 8
  %8 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %9 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = add i64 24, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.ph_info* @kzalloc(i32 %15, i32 %16)
  store %struct.ph_info* %17, %struct.ph_info** %3, align 8
  %18 = load %struct.hfcsusb*, %struct.hfcsusb** %2, align 8
  %19 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ph_info*, %struct.ph_info** %3, align 8
  %22 = getelementptr inbounds %struct.ph_info, %struct.ph_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %26 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ph_info*, %struct.ph_info** %3, align 8
  %29 = getelementptr inbounds %struct.ph_info, %struct.ph_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 8
  %32 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %33 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ph_info*, %struct.ph_info** %3, align 8
  %36 = getelementptr inbounds %struct.ph_info, %struct.ph_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %39 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ph_info*, %struct.ph_info** %3, align 8
  %43 = getelementptr inbounds %struct.ph_info, %struct.ph_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %84, %1
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %48 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %87

52:                                               ; preds = %45
  %53 = load %struct.hfcsusb*, %struct.hfcsusb** %2, align 8
  %54 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ph_info*, %struct.ph_info** %3, align 8
  %63 = getelementptr inbounds %struct.ph_info, %struct.ph_info* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store i32 %61, i32* %68, align 4
  %69 = load %struct.hfcsusb*, %struct.hfcsusb** %2, align 8
  %70 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ph_info*, %struct.ph_info** %3, align 8
  %78 = getelementptr inbounds %struct.ph_info, %struct.ph_info* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  store i32 %76, i32* %83, align 4
  br label %84

84:                                               ; preds = %52
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %45

87:                                               ; preds = %45
  %88 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %89 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32, i32* @MPH_INFORMATION_IND, align 4
  %92 = load i32, i32* @MISDN_ID_ANY, align 4
  %93 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %94 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = add i64 4, %98
  %100 = trunc i64 %99 to i32
  %101 = load %struct.ph_info*, %struct.ph_info** %3, align 8
  %102 = load i32, i32* @GFP_ATOMIC, align 4
  %103 = call i32 @_queue_data(i32* %90, i32 %91, i32 %92, i32 %100, %struct.ph_info* %101, i32 %102)
  ret void
}

declare dso_local %struct.ph_info* @kzalloc(i32, i32) #1

declare dso_local i32 @_queue_data(i32*, i32, i32, i32, %struct.ph_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
