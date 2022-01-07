; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_interface.c_pnp_print_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_interface.c_pnp_print_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_mem = type { i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [46 x i8] c"%sMemory %#llx-%#llx, align %#llx, size %#llx\00", align 1
@IORESOURCE_MEM_WRITEABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c", writeable\00", align 1
@IORESOURCE_MEM_CACHEABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c", cacheable\00", align 1
@IORESOURCE_MEM_RANGELENGTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c", range-length\00", align 1
@IORESOURCE_MEM_SHADOWABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c", shadowable\00", align 1
@IORESOURCE_MEM_EXPANSIONROM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c", expansion ROM\00", align 1
@IORESOURCE_MEM_TYPE_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"8-bit\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"8-bit&16-bit\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"32-bit\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"16-bit\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c", %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.pnp_mem*)* @pnp_print_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnp_print_mem(i32* %0, i8* %1, %struct.pnp_mem* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pnp_mem*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.pnp_mem* %2, %struct.pnp_mem** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %11 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %14 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %17 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %20 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %9, i64 %12, i64 %15, i64 %18, i64 %21)
  %23 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %24 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IORESOURCE_MEM_WRITEABLE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %34 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IORESOURCE_MEM_CACHEABLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %32
  %43 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %44 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IORESOURCE_MEM_RANGELENGTH, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %42
  %53 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %54 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IORESOURCE_MEM_SHADOWABLE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %52
  %63 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %64 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IORESOURCE_MEM_EXPANSIONROM, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %62
  %73 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %74 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IORESOURCE_MEM_TYPE_MASK, align 4
  %77 = and i32 %75, %76
  switch i32 %77, label %81 [
    i32 128, label %78
    i32 129, label %79
    i32 130, label %80
  ]

78:                                               ; preds = %72
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %82

79:                                               ; preds = %72
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %82

80:                                               ; preds = %72
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %82

81:                                               ; preds = %72
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %7, align 8
  br label %82

82:                                               ; preds = %81, %80, %79, %78
  %83 = load i32*, i32** %4, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %84)
  ret void
}

declare dso_local i32 @pnp_printf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
