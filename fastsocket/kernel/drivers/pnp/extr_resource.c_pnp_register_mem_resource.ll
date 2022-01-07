; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_resource.c_pnp_register_mem_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_resource.c_pnp_register_mem_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.pnp_option = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pnp_mem }
%struct.pnp_mem = type { i8, i8*, i8*, i8*, i8* }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnp_register_mem_resource(%struct.pnp_dev* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8 zeroext %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.pnp_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca %struct.pnp_option*, align 8
  %17 = alloca %struct.pnp_mem*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8 %6, i8* %15, align 1
  %18 = load %struct.pnp_dev*, %struct.pnp_dev** %9, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.pnp_option* @pnp_build_option(%struct.pnp_dev* %18, i32 %19, i32 %20)
  store %struct.pnp_option* %21, %struct.pnp_option** %16, align 8
  %22 = load %struct.pnp_option*, %struct.pnp_option** %16, align 8
  %23 = icmp ne %struct.pnp_option* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %49

27:                                               ; preds = %7
  %28 = load %struct.pnp_option*, %struct.pnp_option** %16, align 8
  %29 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.pnp_mem* %30, %struct.pnp_mem** %17, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load %struct.pnp_mem*, %struct.pnp_mem** %17, align 8
  %33 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load %struct.pnp_mem*, %struct.pnp_mem** %17, align 8
  %36 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load %struct.pnp_mem*, %struct.pnp_mem** %17, align 8
  %39 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = load %struct.pnp_mem*, %struct.pnp_mem** %17, align 8
  %42 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i8, i8* %15, align 1
  %44 = load %struct.pnp_mem*, %struct.pnp_mem** %17, align 8
  %45 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %44, i32 0, i32 0
  store i8 %43, i8* %45, align 8
  %46 = load %struct.pnp_dev*, %struct.pnp_dev** %9, align 8
  %47 = load %struct.pnp_option*, %struct.pnp_option** %16, align 8
  %48 = call i32 @dbg_pnp_show_option(%struct.pnp_dev* %46, %struct.pnp_option* %47)
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %27, %24
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local %struct.pnp_option* @pnp_build_option(%struct.pnp_dev*, i32, i32) #1

declare dso_local i32 @dbg_pnp_show_option(%struct.pnp_dev*, %struct.pnp_option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
