; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270_view = type { i32 }
%struct.tty3270 = type { i32, %struct.TYPE_2__*, %struct.tty_struct* }
%struct.TYPE_2__ = type { i32* }
%struct.tty_struct = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3270_view*)* @tty3270_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty3270_release(%struct.raw3270_view* %0) #0 {
  %2 = alloca %struct.raw3270_view*, align 8
  %3 = alloca %struct.tty3270*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store %struct.raw3270_view* %0, %struct.raw3270_view** %2, align 8
  %5 = load %struct.raw3270_view*, %struct.raw3270_view** %2, align 8
  %6 = bitcast %struct.raw3270_view* %5 to %struct.tty3270*
  store %struct.tty3270* %6, %struct.tty3270** %3, align 8
  %7 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %8 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %7, i32 0, i32 2
  %9 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  store %struct.tty_struct* %9, %struct.tty_struct** %4, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = icmp ne %struct.tty_struct* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  %15 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %16 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  %19 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %20 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %19, i32 0, i32 2
  store %struct.tty_struct* null, %struct.tty_struct** %20, align 8
  %21 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %22 = call i32 @tty_hangup(%struct.tty_struct* %21)
  %23 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %24 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %23, i32 0, i32 0
  %25 = call i32 @raw3270_put_view(i32* %24)
  br label %26

26:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @tty_hangup(%struct.tty_struct*) #1

declare dso_local i32 @raw3270_put_view(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
