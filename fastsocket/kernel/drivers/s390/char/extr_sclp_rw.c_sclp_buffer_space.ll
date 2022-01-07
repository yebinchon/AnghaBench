; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_rw.c_sclp_buffer_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_rw.c_sclp_buffer_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_buffer = type { i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MAX_SCCB_ROOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sclp_buffer_space(%struct.sclp_buffer* %0) #0 {
  %2 = alloca %struct.sclp_buffer*, align 8
  %3 = alloca i32, align 4
  store %struct.sclp_buffer* %0, %struct.sclp_buffer** %2, align 8
  %4 = load i32, i32* @MAX_SCCB_ROOM, align 4
  %5 = load %struct.sclp_buffer*, %struct.sclp_buffer** %2, align 8
  %6 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %4, %10
  store i32 %11, i32* %3, align 4
  %12 = load %struct.sclp_buffer*, %struct.sclp_buffer** %2, align 8
  %13 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.sclp_buffer*, %struct.sclp_buffer** %2, align 8
  %18 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 4, %19
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = sub i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %16, %1
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
