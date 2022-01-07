; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_rw.c_sclp_set_columns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_rw.c_sclp_set_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_buffer = type { i16, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sclp_set_columns(%struct.sclp_buffer* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.sclp_buffer*, align 8
  %4 = alloca i16, align 2
  store %struct.sclp_buffer* %0, %struct.sclp_buffer** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = load %struct.sclp_buffer*, %struct.sclp_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %6, i32 0, i32 0
  store i16 %5, i16* %7, align 8
  %8 = load %struct.sclp_buffer*, %struct.sclp_buffer** %3, align 8
  %9 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.sclp_buffer*, %struct.sclp_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.sclp_buffer*, %struct.sclp_buffer** %3, align 8
  %17 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %16, i32 0, i32 0
  %18 = load i16, i16* %17, align 8
  %19 = zext i16 %18 to i64
  %20 = icmp sgt i64 %15, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load %struct.sclp_buffer*, %struct.sclp_buffer** %3, align 8
  %23 = call i32 @sclp_finalize_mto(%struct.sclp_buffer* %22)
  br label %24

24:                                               ; preds = %21, %12, %2
  ret void
}

declare dso_local i32 @sclp_finalize_mto(%struct.sclp_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
