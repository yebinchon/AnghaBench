; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_sdio.c_if_sdio_host_to_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_sdio.c_if_sdio_host_to_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, %struct.if_sdio_card* }
%struct.if_sdio_card = type { i32, i32, i32, %struct.if_sdio_packet*, i32 }
%struct.if_sdio_packet = type { i32, i32*, %struct.if_sdio_packet* }

@LBS_DEB_SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"type %d, bytes %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DNLD_CMD_SENT = common dso_local global i32 0, align 4
@DNLD_DATA_SENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unknown packet type %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, i32, i32*, i32)* @if_sdio_host_to_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_host_to_card(%struct.lbs_private* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.lbs_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.if_sdio_card*, align 8
  %11 = alloca %struct.if_sdio_packet*, align 8
  %12 = alloca %struct.if_sdio_packet*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @LBS_DEB_SDIO, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @lbs_deb_enter_args(i32 %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %20 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %19, i32 0, i32 1
  %21 = load %struct.if_sdio_card*, %struct.if_sdio_card** %20, align 8
  store %struct.if_sdio_card* %21, %struct.if_sdio_card** %10, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ugt i64 %23, 65508
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %9, align 4
  br label %136

28:                                               ; preds = %4
  %29 = load %struct.if_sdio_card*, %struct.if_sdio_card** %10, align 8
  %30 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 4
  %34 = call i32 @sdio_align_size(i32 %31, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 24, %36
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  %40 = call %struct.if_sdio_packet* @kzalloc(i32 %38, i32 %39)
  store %struct.if_sdio_packet* %40, %struct.if_sdio_packet** %11, align 8
  %41 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %42 = icmp ne %struct.if_sdio_packet* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %28
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %136

46:                                               ; preds = %28
  %47 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %48 = getelementptr inbounds %struct.if_sdio_packet, %struct.if_sdio_packet* %47, i32 0, i32 2
  store %struct.if_sdio_packet* null, %struct.if_sdio_packet** %48, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %51 = getelementptr inbounds %struct.if_sdio_packet, %struct.if_sdio_packet* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 4
  %54 = and i32 %53, 255
  %55 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %56 = getelementptr inbounds %struct.if_sdio_packet, %struct.if_sdio_packet* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 4
  %61 = ashr i32 %60, 8
  %62 = and i32 %61, 255
  %63 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %64 = getelementptr inbounds %struct.if_sdio_packet, %struct.if_sdio_packet* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %69 = getelementptr inbounds %struct.if_sdio_packet, %struct.if_sdio_packet* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  store i32 %67, i32* %71, align 4
  %72 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %73 = getelementptr inbounds %struct.if_sdio_packet, %struct.if_sdio_packet* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  store i32 0, i32* %75, align 4
  %76 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %77 = getelementptr inbounds %struct.if_sdio_packet, %struct.if_sdio_packet* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @memcpy(i32* %79, i32* %80, i32 %81)
  %83 = load %struct.if_sdio_card*, %struct.if_sdio_card** %10, align 8
  %84 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %83, i32 0, i32 2
  %85 = load i64, i64* %14, align 8
  %86 = call i32 @spin_lock_irqsave(i32* %84, i64 %85)
  %87 = load %struct.if_sdio_card*, %struct.if_sdio_card** %10, align 8
  %88 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %87, i32 0, i32 3
  %89 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %88, align 8
  %90 = icmp ne %struct.if_sdio_packet* %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %46
  %92 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %93 = load %struct.if_sdio_card*, %struct.if_sdio_card** %10, align 8
  %94 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %93, i32 0, i32 3
  store %struct.if_sdio_packet* %92, %struct.if_sdio_packet** %94, align 8
  br label %112

95:                                               ; preds = %46
  %96 = load %struct.if_sdio_card*, %struct.if_sdio_card** %10, align 8
  %97 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %96, i32 0, i32 3
  %98 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %97, align 8
  store %struct.if_sdio_packet* %98, %struct.if_sdio_packet** %12, align 8
  br label %99

99:                                               ; preds = %104, %95
  %100 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %12, align 8
  %101 = getelementptr inbounds %struct.if_sdio_packet, %struct.if_sdio_packet* %100, i32 0, i32 2
  %102 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %101, align 8
  %103 = icmp ne %struct.if_sdio_packet* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %12, align 8
  %106 = getelementptr inbounds %struct.if_sdio_packet, %struct.if_sdio_packet* %105, i32 0, i32 2
  %107 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %106, align 8
  store %struct.if_sdio_packet* %107, %struct.if_sdio_packet** %12, align 8
  br label %99

108:                                              ; preds = %99
  %109 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %110 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %12, align 8
  %111 = getelementptr inbounds %struct.if_sdio_packet, %struct.if_sdio_packet* %110, i32 0, i32 2
  store %struct.if_sdio_packet* %109, %struct.if_sdio_packet** %111, align 8
  br label %112

112:                                              ; preds = %108, %91
  %113 = load i32, i32* %6, align 4
  switch i32 %113, label %122 [
    i32 129, label %114
    i32 128, label %118
  ]

114:                                              ; preds = %112
  %115 = load i32, i32* @DNLD_CMD_SENT, align 4
  %116 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %117 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %125

118:                                              ; preds = %112
  %119 = load i32, i32* @DNLD_DATA_SENT, align 4
  %120 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %121 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  br label %125

122:                                              ; preds = %112
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %122, %118, %114
  %126 = load %struct.if_sdio_card*, %struct.if_sdio_card** %10, align 8
  %127 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %126, i32 0, i32 2
  %128 = load i64, i64* %14, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  %130 = load %struct.if_sdio_card*, %struct.if_sdio_card** %10, align 8
  %131 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.if_sdio_card*, %struct.if_sdio_card** %10, align 8
  %134 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %133, i32 0, i32 0
  %135 = call i32 @queue_work(i32 %132, i32* %134)
  store i32 0, i32* %9, align 4
  br label %136

136:                                              ; preds = %125, %43, %25
  %137 = load i32, i32* @LBS_DEB_SDIO, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @lbs_deb_leave_args(i32 %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %9, align 4
  ret i32 %140
}

declare dso_local i32 @lbs_deb_enter_args(i32, i8*, i32, i32) #1

declare dso_local i32 @sdio_align_size(i32, i32) #1

declare dso_local %struct.if_sdio_packet* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lbs_deb_sdio(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
