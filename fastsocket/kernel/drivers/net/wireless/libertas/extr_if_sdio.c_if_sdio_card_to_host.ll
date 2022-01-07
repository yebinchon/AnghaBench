; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_sdio.c_if_sdio_card_to_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_sdio.c_if_sdio_card_to_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_sdio_card = type { i32*, i32, i32 }

@LBS_DEB_SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"invalid packet size (%d bytes) from firmware\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@IF_SDIO_STATUS = common dso_local global i32 0, align 4
@IF_SDIO_IO_RDY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"packet of type %d and size %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"packet fragment (%d > %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"packet fragment (%d < %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"invalid type (%d) from firmware\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"problem fetching packet from firmware\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_sdio_card*)* @if_sdio_card_to_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_card_to_host(%struct.if_sdio_card* %0) #0 {
  %2 = alloca %struct.if_sdio_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.if_sdio_card* %0, %struct.if_sdio_card** %2, align 8
  %9 = load i32, i32* @LBS_DEB_SDIO, align 4
  %10 = call i32 @lbs_deb_enter(i32 %9)
  %11 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %12 = call i32 @if_sdio_read_rx_len(%struct.if_sdio_card* %11, i32* %3)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %165

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i8*, i32, ...) @lbs_deb_sdio(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %165

24:                                               ; preds = %16
  %25 = load i64, i64* @jiffies, align 8
  %26 = load i64, i64* @HZ, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %24, %51
  %29 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %30 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IF_SDIO_STATUS, align 4
  %33 = call i32 @sdio_readb(i32 %31, i32 %32, i32* %3)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %165

37:                                               ; preds = %28
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @IF_SDIO_IO_RDY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %53

43:                                               ; preds = %37
  %44 = load i64, i64* @jiffies, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @time_after(i64 %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %165

51:                                               ; preds = %43
  %52 = call i32 @mdelay(i32 1)
  br label %28

53:                                               ; preds = %42
  %54 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %55 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @sdio_align_size(i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %60 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %63 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %66 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @sdio_readsb(i32 %61, i32* %64, i32 %67, i32 %68)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %53
  br label %165

73:                                               ; preds = %53
  %74 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %75 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %80 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 8
  %85 = or i32 %78, %84
  store i32 %85, i32* %7, align 4
  %86 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %87 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %92 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 8
  %97 = or i32 %90, %96
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 (i8*, i32, ...) @lbs_deb_sdio(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %73
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 (i8*, i32, ...) @lbs_deb_sdio(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %165

110:                                              ; preds = %73
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 (i8*, i32, ...) @lbs_deb_sdio(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %110
  %119 = load i32, i32* %6, align 4
  switch i32 %119, label %159 [
    i32 130, label %120
    i32 129, label %133
    i32 128, label %146
  ]

120:                                              ; preds = %118
  %121 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %122 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %123 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 4
  %126 = load i32, i32* %7, align 4
  %127 = sub nsw i32 %126, 4
  %128 = call i32 @if_sdio_handle_cmd(%struct.if_sdio_card* %121, i32* %125, i32 %127)
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* %3, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  br label %165

132:                                              ; preds = %120
  br label %164

133:                                              ; preds = %118
  %134 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %135 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %136 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 4
  %139 = load i32, i32* %7, align 4
  %140 = sub nsw i32 %139, 4
  %141 = call i32 @if_sdio_handle_data(%struct.if_sdio_card* %134, i32* %138, i32 %140)
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %3, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %133
  br label %165

145:                                              ; preds = %133
  br label %164

146:                                              ; preds = %118
  %147 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %148 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %149 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 4
  %152 = load i32, i32* %7, align 4
  %153 = sub nsw i32 %152, 4
  %154 = call i32 @if_sdio_handle_event(%struct.if_sdio_card* %147, i32* %151, i32 %153)
  store i32 %154, i32* %3, align 4
  %155 = load i32, i32* %3, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %146
  br label %165

158:                                              ; preds = %146
  br label %164

159:                                              ; preds = %118
  %160 = load i32, i32* %6, align 4
  %161 = call i32 (i8*, i32, ...) @lbs_deb_sdio(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %3, align 4
  br label %165

164:                                              ; preds = %158, %145, %132
  br label %165

165:                                              ; preds = %164, %159, %157, %144, %131, %104, %72, %48, %36, %19, %15
  %166 = load i32, i32* %3, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %165
  %171 = load i32, i32* @LBS_DEB_SDIO, align 4
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @lbs_deb_leave_args(i32 %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @if_sdio_read_rx_len(%struct.if_sdio_card*, i32*) #1

declare dso_local i32 @lbs_deb_sdio(i8*, i32, ...) #1

declare dso_local i32 @sdio_readb(i32, i32, i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @sdio_align_size(i32, i32) #1

declare dso_local i32 @sdio_readsb(i32, i32*, i32, i32) #1

declare dso_local i32 @if_sdio_handle_cmd(%struct.if_sdio_card*, i32*, i32) #1

declare dso_local i32 @if_sdio_handle_data(%struct.if_sdio_card*, i32*, i32) #1

declare dso_local i32 @if_sdio_handle_event(%struct.if_sdio_card*, i32*, i32) #1

declare dso_local i32 @lbs_pr_err(i8*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
