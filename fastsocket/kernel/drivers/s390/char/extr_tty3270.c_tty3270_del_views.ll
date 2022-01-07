; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_del_views.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_del_views.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty3270 = type { i32 }

@tty3270_max_index = common dso_local global i32 0, align 4
@tty3270_fn = common dso_local global i32 0, align 4
@RAW3270_FIRSTMINOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tty3270_del_views to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty3270_del_views() #0 {
  %1 = alloca %struct.tty3270*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %22, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @tty3270_max_index, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = load i64, i64* @RAW3270_FIRSTMINOR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i64 @raw3270_find_view(i32* @tty3270_fn, i64 %11)
  %13 = inttoptr i64 %12 to %struct.tty3270*
  store %struct.tty3270* %13, %struct.tty3270** %1, align 8
  %14 = load %struct.tty3270*, %struct.tty3270** %1, align 8
  %15 = call i32 @IS_ERR(%struct.tty3270* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %7
  %18 = load %struct.tty3270*, %struct.tty3270** %1, align 8
  %19 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %18, i32 0, i32 0
  %20 = call i32 @raw3270_del_view(i32* %19)
  br label %21

21:                                               ; preds = %17, %7
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %3

25:                                               ; preds = %3
  ret void
}

declare dso_local i64 @raw3270_find_view(i32*, i64) #1

declare dso_local i32 @IS_ERR(%struct.tty3270*) #1

declare dso_local i32 @raw3270_del_view(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
