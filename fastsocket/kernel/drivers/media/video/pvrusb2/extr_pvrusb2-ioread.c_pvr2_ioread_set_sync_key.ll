; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_set_sync_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_set_sync_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ioread = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvr2_ioread_set_sync_key(%struct.pvr2_ioread* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.pvr2_ioread*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.pvr2_ioread* %0, %struct.pvr2_ioread** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %8 = icmp ne %struct.pvr2_ioread* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %86

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %17 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %26 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @memcmp(i8* %24, i32* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23, %20
  br label %86

32:                                               ; preds = %23, %14
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %35 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %71

38:                                               ; preds = %32
  %39 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %40 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %45 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @kfree(i32* %46)
  %48 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %49 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %43, %38
  %51 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %52 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32* @kmalloc(i32 %56, i32 %57)
  %59 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %60 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %59, i32 0, i32 1
  store i32* %58, i32** %60, align 8
  %61 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %62 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %68 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %55
  br label %70

70:                                               ; preds = %69, %50
  br label %71

71:                                               ; preds = %70, %32
  %72 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %73 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %86

77:                                               ; preds = %71
  %78 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %79 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %83 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @memcpy(i32* %80, i8* %81, i32 %84)
  br label %86

86:                                               ; preds = %77, %76, %31, %9
  ret void
}

declare dso_local i32 @memcmp(i8*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
