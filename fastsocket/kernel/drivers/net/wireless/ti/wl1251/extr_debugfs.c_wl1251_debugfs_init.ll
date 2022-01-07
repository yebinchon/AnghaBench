; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_debugfs.c_wl1251_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_debugfs.c_wl1251_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.TYPE_3__ = type { i32*, i32 }

@KBUILD_MODNAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"fw-statistics\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_debugfs_init(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  %5 = load i8*, i8** @KBUILD_MODNAME, align 8
  %6 = call i8* @debugfs_create_dir(i8* %5, i32* null)
  %7 = bitcast i8* %6 to i32*
  %8 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %9 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32* %7, i32** %10, align 8
  %11 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %12 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @IS_ERR(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %19 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @PTR_ERR(i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %24 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %103

26:                                               ; preds = %1
  %27 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %28 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %30)
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %34 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32* %32, i32** %35, align 8
  %36 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %37 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @IS_ERR(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %26
  %43 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %44 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @PTR_ERR(i32* %46)
  store i32 %47, i32* %4, align 4
  %48 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %49 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  br label %94

51:                                               ; preds = %26
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32* @kzalloc(i32 4, i32 %52)
  %54 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %55 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32* %53, i32** %56, align 8
  %57 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %58 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %85

65:                                               ; preds = %51
  %66 = load i32, i32* @jiffies, align 4
  %67 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %68 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 8
  %70 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %71 = call i32 @wl1251_debugfs_add_files(%struct.wl1251* %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %76

75:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %105

76:                                               ; preds = %74
  %77 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %78 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @kfree(i32* %80)
  %82 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %83 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %76, %62
  %86 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %87 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @debugfs_remove(i32* %89)
  %91 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %92 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32* null, i32** %93, align 8
  br label %94

94:                                               ; preds = %85, %42
  %95 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %96 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @debugfs_remove(i32* %98)
  %100 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %101 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32* null, i32** %102, align 8
  br label %103

103:                                              ; preds = %94, %17
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %75
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i8* @debugfs_create_dir(i8*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_debugfs_add_files(%struct.wl1251*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @debugfs_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
