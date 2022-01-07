; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_scroll_backward.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_scroll_backward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kbd_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.tty3270* }
%struct.tty3270 = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kbd_data*)* @tty3270_scroll_backward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty3270_scroll_backward(%struct.kbd_data* %0) #0 {
  %2 = alloca %struct.kbd_data*, align 8
  %3 = alloca %struct.tty3270*, align 8
  %4 = alloca i32, align 4
  store %struct.kbd_data* %0, %struct.kbd_data** %2, align 8
  %5 = load %struct.kbd_data*, %struct.kbd_data** %2, align 8
  %6 = getelementptr inbounds %struct.kbd_data, %struct.kbd_data* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.tty3270*, %struct.tty3270** %8, align 8
  store %struct.tty3270* %9, %struct.tty3270** %3, align 8
  %10 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %11 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %15 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %18 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %16, %20
  %22 = sub nsw i32 %21, 2
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %25 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %23, %27
  %29 = sub nsw i32 %28, 2
  %30 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %31 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %1
  %35 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %36 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %39 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %37, %41
  %43 = add nsw i32 %42, 2
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %34, %1
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %47 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %53 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %55 = call i32 @tty3270_rebuild_update(%struct.tty3270* %54)
  %56 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %57 = call i32 @tty3270_update_status(%struct.tty3270* %56)
  %58 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %59 = call i32 @tty3270_set_timer(%struct.tty3270* %58, i32 1)
  br label %60

60:                                               ; preds = %50, %44
  %61 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %62 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = call i32 @spin_unlock_bh(i32* %63)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @tty3270_rebuild_update(%struct.tty3270*) #1

declare dso_local i32 @tty3270_update_status(%struct.tty3270*) #1

declare dso_local i32 @tty3270_set_timer(%struct.tty3270*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
