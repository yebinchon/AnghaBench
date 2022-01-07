; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mpic.c_mpic_init_sys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mpic.c_mpic_init_sys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpic = type { %struct.mpic*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@mpics = common dso_local global %struct.mpic* null, align 8
@mpic_sysclass = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mpic_init_sys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpic_init_sys() #0 {
  %1 = alloca %struct.mpic*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.mpic*, %struct.mpic** @mpics, align 8
  store %struct.mpic* %4, %struct.mpic** %1, align 8
  store i32 0, i32* %3, align 4
  %5 = call i32 @sysdev_class_register(i32* @mpic_sysclass)
  store i32 %5, i32* %2, align 4
  br label %6

6:                                                ; preds = %15, %0
  %7 = load %struct.mpic*, %struct.mpic** %1, align 8
  %8 = icmp ne %struct.mpic* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i1 [ false, %6 ], [ %12, %9 ]
  br i1 %14, label %15, label %30

15:                                               ; preds = %13
  %16 = load %struct.mpic*, %struct.mpic** %1, align 8
  %17 = getelementptr inbounds %struct.mpic, %struct.mpic* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32* @mpic_sysclass, i32** %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  %21 = load %struct.mpic*, %struct.mpic** %1, align 8
  %22 = getelementptr inbounds %struct.mpic, %struct.mpic* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 8
  %24 = load %struct.mpic*, %struct.mpic** %1, align 8
  %25 = getelementptr inbounds %struct.mpic, %struct.mpic* %24, i32 0, i32 1
  %26 = call i32 @sysdev_register(%struct.TYPE_2__* %25)
  store i32 %26, i32* %2, align 4
  %27 = load %struct.mpic*, %struct.mpic** %1, align 8
  %28 = getelementptr inbounds %struct.mpic, %struct.mpic* %27, i32 0, i32 0
  %29 = load %struct.mpic*, %struct.mpic** %28, align 8
  store %struct.mpic* %29, %struct.mpic** %1, align 8
  br label %6

30:                                               ; preds = %13
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @sysdev_class_register(i32*) #1

declare dso_local i32 @sysdev_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
