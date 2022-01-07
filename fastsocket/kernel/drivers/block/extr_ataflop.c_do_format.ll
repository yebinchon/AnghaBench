; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ataflop.c_do_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ataflop.c_do_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.atari_format_descr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"do_format( dr=%d tr=%d he=%d offs=%d )\0A\00", align 1
@fdc_busy = common dso_local global i32 0, align 4
@fdc_wait = common dso_local global i32 0, align 4
@floppy_irq = common dso_local global i32 0, align 4
@IRQ_MFP_FDC = common dso_local global i32 0, align 4
@NUM_DISK_MINORS = common dso_local global i32 0, align 4
@minor2disktype = common dso_local global %struct.TYPE_4__* null, align 8
@DriveType = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@atari_disk_type = common dso_local global %struct.TYPE_5__* null, align 8
@UDT = common dso_local global %struct.TYPE_5__* null, align 8
@TrackBuffer = common dso_local global i8* null, align 8
@BufferDrive = common dso_local global i32 0, align 4
@motor_off_timer = common dso_local global i32 0, align 4
@BUFFER_SIZE = common dso_local global i32 0, align 4
@IsFormatting = common dso_local global i32 0, align 4
@FormatError = common dso_local global i64 0, align 8
@ReqTrack = common dso_local global i32 0, align 4
@ReqSide = common dso_local global i32 0, align 4
@format_wait = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.atari_format_descr*)* @do_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_format(i32 %0, i32 %1, %struct.atari_format_descr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.atari_format_descr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.atari_format_descr* %2, %struct.atari_format_descr** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.atari_format_descr*, %struct.atari_format_descr** %7, align 8
  %14 = getelementptr inbounds %struct.atari_format_descr, %struct.atari_format_descr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.atari_format_descr*, %struct.atari_format_descr** %7, align 8
  %17 = getelementptr inbounds %struct.atari_format_descr, %struct.atari_format_descr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.atari_format_descr*, %struct.atari_format_descr** %7, align 8
  %20 = getelementptr inbounds %struct.atari_format_descr, %struct.atari_format_descr* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @DPRINT(i8* %23)
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @local_irq_save(i64 %25)
  br label %27

27:                                               ; preds = %30, %3
  %28 = load i32, i32* @fdc_busy, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 @sleep_on(i32* @fdc_wait)
  br label %27

32:                                               ; preds = %27
  store i32 1, i32* @fdc_busy, align 4
  %33 = load i32, i32* @floppy_irq, align 4
  %34 = call i32 @stdma_lock(i32 %33, i32* null)
  %35 = load i32, i32* @IRQ_MFP_FDC, align 4
  %36 = call i32 @atari_turnon_irq(i32 %35)
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @local_irq_restore(i64 %37)
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @NUM_DISK_MINORS, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @minor2disktype, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DriveType, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %46, %41
  %56 = call i32 (...) @redo_fd_request()
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %184

59:                                               ; preds = %46
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @minor2disktype, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %6, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @atari_disk_type, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** @UDT, align 8
  br label %70

70:                                               ; preds = %59, %32
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UDT, align 8
  %72 = icmp ne %struct.TYPE_5__* %71, null
  br i1 %72, label %73, label %91

73:                                               ; preds = %70
  %74 = load %struct.atari_format_descr*, %struct.atari_format_descr** %7, align 8
  %75 = getelementptr inbounds %struct.atari_format_descr, %struct.atari_format_descr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UDT, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UDT, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 %79, %82
  %84 = sdiv i32 %83, 2
  %85 = icmp sge i32 %76, %84
  br i1 %85, label %91, label %86

86:                                               ; preds = %73
  %87 = load %struct.atari_format_descr*, %struct.atari_format_descr** %7, align 8
  %88 = getelementptr inbounds %struct.atari_format_descr, %struct.atari_format_descr* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %89, 2
  br i1 %90, label %91, label %95

91:                                               ; preds = %86, %73, %70
  %92 = call i32 (...) @redo_fd_request()
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %184

95:                                               ; preds = %86
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UDT, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %10, align 4
  %99 = load i8*, i8** @TrackBuffer, align 8
  store i8* %99, i8** %8, align 8
  store i32 -1, i32* @BufferDrive, align 4
  %100 = call i32 @del_timer(i32* @motor_off_timer)
  %101 = load i32, i32* %10, align 4
  %102 = sdiv i32 %101, 9
  %103 = mul nsw i32 60, %102
  %104 = call i32 @FILL(i32 %103, i32 78)
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %152, %95
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %155

109:                                              ; preds = %105
  %110 = call i32 @FILL(i32 12, i32 0)
  %111 = call i32 @FILL(i32 3, i32 245)
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %8, align 8
  store i8 -2, i8* %112, align 1
  %114 = load %struct.atari_format_descr*, %struct.atari_format_descr** %7, align 8
  %115 = getelementptr inbounds %struct.atari_format_descr, %struct.atari_format_descr* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = trunc i32 %116 to i8
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %8, align 8
  store i8 %117, i8* %118, align 1
  %120 = load %struct.atari_format_descr*, %struct.atari_format_descr** %7, align 8
  %121 = getelementptr inbounds %struct.atari_format_descr, %struct.atari_format_descr* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %8, align 8
  store i8 %123, i8* %124, align 1
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %126, %127
  %129 = load %struct.atari_format_descr*, %struct.atari_format_descr** %7, align 8
  %130 = getelementptr inbounds %struct.atari_format_descr, %struct.atari_format_descr* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %128, %131
  %133 = load i32, i32* %10, align 4
  %134 = srem i32 %132, %133
  %135 = add nsw i32 %134, 1
  %136 = trunc i32 %135 to i8
  %137 = load i8*, i8** %8, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %8, align 8
  store i8 %136, i8* %137, align 1
  %139 = load i8*, i8** %8, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %8, align 8
  store i8 2, i8* %139, align 1
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %8, align 8
  store i8 -9, i8* %141, align 1
  %143 = call i32 @FILL(i32 22, i32 78)
  %144 = call i32 @FILL(i32 12, i32 0)
  %145 = call i32 @FILL(i32 3, i32 245)
  %146 = load i8*, i8** %8, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %8, align 8
  store i8 -5, i8* %146, align 1
  %148 = call i32 @FILL(i32 512, i32 229)
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %8, align 8
  store i8 -9, i8* %149, align 1
  %151 = call i32 @FILL(i32 40, i32 78)
  br label %152

152:                                              ; preds = %109
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %105

155:                                              ; preds = %105
  %156 = load i8*, i8** @TrackBuffer, align 8
  %157 = load i32, i32* @BUFFER_SIZE, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8*, i8** %8, align 8
  %161 = ptrtoint i8* %159 to i64
  %162 = ptrtoint i8* %160 to i64
  %163 = sub i64 %161, %162
  %164 = trunc i64 %163 to i32
  %165 = call i32 @FILL(i32 %164, i32 78)
  store i32 1, i32* @IsFormatting, align 4
  store i64 0, i64* @FormatError, align 8
  %166 = load %struct.atari_format_descr*, %struct.atari_format_descr** %7, align 8
  %167 = getelementptr inbounds %struct.atari_format_descr, %struct.atari_format_descr* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* @ReqTrack, align 4
  %169 = load %struct.atari_format_descr*, %struct.atari_format_descr** %7, align 8
  %170 = getelementptr inbounds %struct.atari_format_descr, %struct.atari_format_descr* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* @ReqSide, align 4
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @do_fd_action(i32 %172)
  %174 = call i32 @sleep_on(i32* @format_wait)
  %175 = call i32 (...) @redo_fd_request()
  %176 = load i64, i64* @FormatError, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %155
  %179 = load i32, i32* @EIO, align 4
  %180 = sub nsw i32 0, %179
  br label %182

181:                                              ; preds = %155
  br label %182

182:                                              ; preds = %181, %178
  %183 = phi i32 [ %180, %178 ], [ 0, %181 ]
  store i32 %183, i32* %4, align 4
  br label %184

184:                                              ; preds = %182, %91, %55
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @sleep_on(i32*) #1

declare dso_local i32 @stdma_lock(i32, i32*) #1

declare dso_local i32 @atari_turnon_irq(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @redo_fd_request(...) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @FILL(i32, i32) #1

declare dso_local i32 @do_fd_action(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
