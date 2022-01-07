; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/hpux/extr_sys_hpux.c_do_statfs_hpux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/hpux/extr_sys_hpux.c_do_statfs_hpux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.hpux_statfs = type { i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.kstatfs = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.hpux_statfs*)* @do_statfs_hpux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_statfs_hpux(%struct.path* %0, %struct.hpux_statfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.path*, align 8
  %5 = alloca %struct.hpux_statfs*, align 8
  %6 = alloca %struct.kstatfs, align 8
  %7 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %4, align 8
  store %struct.hpux_statfs* %1, %struct.hpux_statfs** %5, align 8
  %8 = load %struct.path*, %struct.path** %4, align 8
  %9 = call i32 @vfs_statfs(%struct.path* %8, %struct.kstatfs* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %63

14:                                               ; preds = %2
  %15 = load %struct.hpux_statfs*, %struct.hpux_statfs** %5, align 8
  %16 = call i32 @memset(%struct.hpux_statfs* %15, i32 0, i32 40)
  %17 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %6, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.hpux_statfs*, %struct.hpux_statfs** %5, align 8
  %20 = getelementptr inbounds %struct.hpux_statfs, %struct.hpux_statfs* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 8
  %21 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %6, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hpux_statfs*, %struct.hpux_statfs** %5, align 8
  %24 = getelementptr inbounds %struct.hpux_statfs, %struct.hpux_statfs* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %6, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.hpux_statfs*, %struct.hpux_statfs** %5, align 8
  %28 = getelementptr inbounds %struct.hpux_statfs, %struct.hpux_statfs* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %6, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hpux_statfs*, %struct.hpux_statfs** %5, align 8
  %32 = getelementptr inbounds %struct.hpux_statfs, %struct.hpux_statfs* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %6, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.hpux_statfs*, %struct.hpux_statfs** %5, align 8
  %36 = getelementptr inbounds %struct.hpux_statfs, %struct.hpux_statfs* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %6, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hpux_statfs*, %struct.hpux_statfs** %5, align 8
  %40 = getelementptr inbounds %struct.hpux_statfs, %struct.hpux_statfs* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %6, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.hpux_statfs*, %struct.hpux_statfs** %5, align 8
  %44 = getelementptr inbounds %struct.hpux_statfs, %struct.hpux_statfs* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %6, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.hpux_statfs*, %struct.hpux_statfs** %5, align 8
  %51 = getelementptr inbounds %struct.hpux_statfs, %struct.hpux_statfs* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %49, i32* %53, align 4
  %54 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %6, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hpux_statfs*, %struct.hpux_statfs** %5, align 8
  %60 = getelementptr inbounds %struct.hpux_statfs, %struct.hpux_statfs* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %58, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %14, %12
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @vfs_statfs(%struct.path*, %struct.kstatfs*) #1

declare dso_local i32 @memset(%struct.hpux_statfs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
