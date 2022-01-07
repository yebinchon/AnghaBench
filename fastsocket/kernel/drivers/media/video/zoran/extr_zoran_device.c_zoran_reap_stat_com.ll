; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_device.c_zoran_reap_stat_com.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_device.c_zoran_reap_stat_com.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zoran = type { i64, i32, i64, i64, i32, i32*, i32, %struct.TYPE_6__, %struct.TYPE_4__, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.zoran_buffer* }
%struct.zoran_buffer = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@BUZ_MODE_MOTION_DECOMPRESS = common dso_local global i64 0, align 8
@BUZ_MASK_STAT_COM = common dso_local global i32 0, align 4
@BUZ_MASK_FRAME = common dso_local global i64 0, align 8
@BUZ_MODE_MOTION_COMPRESS = common dso_local global i64 0, align 8
@BUZ_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zoran*)* @zoran_reap_stat_com to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zoran_reap_stat_com(%struct.zoran* %0) #0 {
  %2 = alloca %struct.zoran*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.zoran_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.zoran* %0, %struct.zoran** %2, align 8
  %9 = load %struct.zoran*, %struct.zoran** %2, align 8
  %10 = getelementptr inbounds %struct.zoran, %struct.zoran* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BUZ_MODE_MOTION_DECOMPRESS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.zoran*, %struct.zoran** %2, align 8
  %16 = getelementptr inbounds %struct.zoran, %struct.zoran* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = add i32 %17, 1
  store i32 %18, i32* %16, align 8
  br label %19

19:                                               ; preds = %14, %1
  br label %20

20:                                               ; preds = %144, %19
  %21 = load %struct.zoran*, %struct.zoran** %2, align 8
  %22 = getelementptr inbounds %struct.zoran, %struct.zoran* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.zoran*, %struct.zoran** %2, align 8
  %25 = getelementptr inbounds %struct.zoran, %struct.zoran* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %156

28:                                               ; preds = %20
  %29 = load %struct.zoran*, %struct.zoran** %2, align 8
  %30 = getelementptr inbounds %struct.zoran, %struct.zoran* %29, i32 0, i32 7
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.zoran*, %struct.zoran** %2, align 8
  %36 = getelementptr inbounds %struct.zoran, %struct.zoran* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.zoran*, %struct.zoran** %2, align 8
  %39 = getelementptr inbounds %struct.zoran, %struct.zoran* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = sub i64 %37, %41
  %43 = load i32, i32* @BUZ_MASK_STAT_COM, align 4
  %44 = sext i32 %43 to i64
  %45 = and i64 %42, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %60

47:                                               ; preds = %28
  %48 = load %struct.zoran*, %struct.zoran** %2, align 8
  %49 = getelementptr inbounds %struct.zoran, %struct.zoran* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.zoran*, %struct.zoran** %2, align 8
  %52 = getelementptr inbounds %struct.zoran, %struct.zoran* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = sub i64 %50, %54
  %56 = and i64 %55, 1
  %57 = mul i64 %56, 2
  %58 = add i64 %57, 1
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %47, %34
  %61 = load %struct.zoran*, %struct.zoran** %2, align 8
  %62 = getelementptr inbounds %struct.zoran, %struct.zoran* %61, i32 0, i32 9
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32_to_cpu(i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %156

73:                                               ; preds = %60
  %74 = load %struct.zoran*, %struct.zoran** %2, align 8
  %75 = getelementptr inbounds %struct.zoran, %struct.zoran* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.zoran*, %struct.zoran** %2, align 8
  %78 = getelementptr inbounds %struct.zoran, %struct.zoran* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @BUZ_MASK_FRAME, align 8
  %81 = and i64 %79, %80
  %82 = getelementptr inbounds i32, i32* %76, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %8, align 4
  %84 = load %struct.zoran*, %struct.zoran** %2, align 8
  %85 = getelementptr inbounds %struct.zoran, %struct.zoran* %84, i32 0, i32 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.zoran_buffer*, %struct.zoran_buffer** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.zoran_buffer, %struct.zoran_buffer* %87, i64 %89
  store %struct.zoran_buffer* %90, %struct.zoran_buffer** %7, align 8
  %91 = load %struct.zoran_buffer*, %struct.zoran_buffer** %7, align 8
  %92 = getelementptr inbounds %struct.zoran_buffer, %struct.zoran_buffer* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = call i32 @do_gettimeofday(i32* %93)
  %95 = load %struct.zoran*, %struct.zoran** %2, align 8
  %96 = getelementptr inbounds %struct.zoran, %struct.zoran* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @BUZ_MODE_MOTION_COMPRESS, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %125

100:                                              ; preds = %73
  %101 = load i32, i32* %4, align 4
  %102 = and i32 %101, 8388607
  %103 = ashr i32 %102, 1
  %104 = load %struct.zoran_buffer*, %struct.zoran_buffer** %7, align 8
  %105 = getelementptr inbounds %struct.zoran_buffer, %struct.zoran_buffer* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* %4, align 4
  %108 = ashr i32 %107, 24
  %109 = load %struct.zoran*, %struct.zoran** %2, align 8
  %110 = getelementptr inbounds %struct.zoran, %struct.zoran* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %108, %111
  %113 = and i32 %112, 255
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.zoran*, %struct.zoran** %2, align 8
  %116 = getelementptr inbounds %struct.zoran, %struct.zoran* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = sub i32 %114, %117
  %119 = and i32 %118, 255
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.zoran*, %struct.zoran** %2, align 8
  %122 = getelementptr inbounds %struct.zoran, %struct.zoran* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = add i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %129

125:                                              ; preds = %73
  %126 = load %struct.zoran_buffer*, %struct.zoran_buffer** %7, align 8
  %127 = getelementptr inbounds %struct.zoran_buffer, %struct.zoran_buffer* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  store i32 0, i32* %128, align 4
  br label %129

129:                                              ; preds = %125, %100
  %130 = load %struct.zoran*, %struct.zoran** %2, align 8
  %131 = getelementptr inbounds %struct.zoran, %struct.zoran* %130, i32 0, i32 7
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = load %struct.zoran*, %struct.zoran** %2, align 8
  %137 = getelementptr inbounds %struct.zoran, %struct.zoran* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = lshr i32 %138, 1
  br label %144

140:                                              ; preds = %129
  %141 = load %struct.zoran*, %struct.zoran** %2, align 8
  %142 = getelementptr inbounds %struct.zoran, %struct.zoran* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  br label %144

144:                                              ; preds = %140, %135
  %145 = phi i32 [ %139, %135 ], [ %143, %140 ]
  %146 = load %struct.zoran_buffer*, %struct.zoran_buffer** %7, align 8
  %147 = getelementptr inbounds %struct.zoran_buffer, %struct.zoran_buffer* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 4
  %149 = load i32, i32* @BUZ_STATE_DONE, align 4
  %150 = load %struct.zoran_buffer*, %struct.zoran_buffer** %7, align 8
  %151 = getelementptr inbounds %struct.zoran_buffer, %struct.zoran_buffer* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  %152 = load %struct.zoran*, %struct.zoran** %2, align 8
  %153 = getelementptr inbounds %struct.zoran, %struct.zoran* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %153, align 8
  br label %20

156:                                              ; preds = %72, %20
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
