; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_pcmciamtd.c_pcmcia_copy_to_remap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_pcmciamtd.c_pcmcia_copy_to_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i64 }
%struct.pcmciamtd_dev = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"to = %lu from = %p len = %u\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"memcpy from %p to %p len = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*, i64, i8*, i32)* @pcmcia_copy_to_remap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmcia_copy_to_remap(%struct.map_info* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.map_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pcmciamtd_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.map_info* %0, %struct.map_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.map_info*, %struct.map_info** %5, align 8
  %14 = getelementptr inbounds %struct.map_info, %struct.map_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.pcmciamtd_dev*
  store %struct.pcmciamtd_dev* %16, %struct.pcmciamtd_dev** %9, align 8
  %17 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %9, align 8
  %18 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %6, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @DEBUG(i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22, i32 %23)
  br label %25

25:                                               ; preds = %48, %4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %68

28:                                               ; preds = %25
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %10, align 8
  %32 = sub i64 %31, 1
  %33 = and i64 %30, %32
  %34 = sub i64 %29, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %39, %28
  %42 = load %struct.map_info*, %struct.map_info** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i8* @remap_window(%struct.map_info* %42, i64 %43)
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %68

48:                                               ; preds = %41
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @DEBUG(i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %49, i8* %50, i32 %51)
  %53 = load i8*, i8** %12, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @memcpy_toio(i8* %53, i8* %54, i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr i8, i8* %65, i64 %66
  store i8* %67, i8** %7, align 8
  br label %25

68:                                               ; preds = %47, %25
  ret void
}

declare dso_local i32 @DEBUG(i32, i8*, i8*, i8*, i32) #1

declare dso_local i8* @remap_window(%struct.map_info*, i64) #1

declare dso_local i32 @memcpy_toio(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
