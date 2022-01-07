; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_machine_kexec_32.c_machine_kexec_alloc_page_tables.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_machine_kexec_32.c_machine_kexec_alloc_page_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kimage*)* @machine_kexec_alloc_page_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machine_kexec_alloc_page_tables(%struct.kimage* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kimage*, align 8
  store %struct.kimage* %0, %struct.kimage** %3, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call i64 @get_zeroed_page(i32 %4)
  %6 = inttoptr i64 %5 to i32*
  %7 = load %struct.kimage*, %struct.kimage** %3, align 8
  %8 = getelementptr inbounds %struct.kimage, %struct.kimage* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 4
  store i32* %6, i32** %9, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i64 @get_zeroed_page(i32 %10)
  %12 = inttoptr i64 %11 to i32*
  %13 = load %struct.kimage*, %struct.kimage** %3, align 8
  %14 = getelementptr inbounds %struct.kimage, %struct.kimage* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32* %12, i32** %15, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i64 @get_zeroed_page(i32 %16)
  %18 = inttoptr i64 %17 to i32*
  %19 = load %struct.kimage*, %struct.kimage** %3, align 8
  %20 = getelementptr inbounds %struct.kimage, %struct.kimage* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32* %18, i32** %21, align 8
  %22 = load %struct.kimage*, %struct.kimage** %3, align 8
  %23 = getelementptr inbounds %struct.kimage, %struct.kimage* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %1
  %28 = load %struct.kimage*, %struct.kimage** %3, align 8
  %29 = getelementptr inbounds %struct.kimage, %struct.kimage* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.kimage*, %struct.kimage** %3, align 8
  %35 = getelementptr inbounds %struct.kimage, %struct.kimage* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %33, %27, %1
  %40 = load %struct.kimage*, %struct.kimage** %3, align 8
  %41 = call i32 @machine_kexec_free_page_tables(%struct.kimage* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %45

44:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @machine_kexec_free_page_tables(%struct.kimage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
