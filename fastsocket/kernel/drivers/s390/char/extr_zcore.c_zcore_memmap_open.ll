; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_zcore.c_zcore_memmap_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_zcore.c_zcore_memmap_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i8* }
%struct.mem_chunk = type { i64, i64 }

@MEMORY_CHUNKS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHUNK_INFO_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%016llx %016llx \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @zcore_memmap_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcore_memmap_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mem_chunk*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load i32, i32* @MEMORY_CHUNKS, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 16
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i32 %12, i32 %13)
  %15 = bitcast i8* %14 to %struct.mem_chunk*
  store %struct.mem_chunk* %15, %struct.mem_chunk** %8, align 8
  %16 = load %struct.mem_chunk*, %struct.mem_chunk** %8, align 8
  %17 = icmp ne %struct.mem_chunk* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %79

21:                                               ; preds = %2
  %22 = load %struct.mem_chunk*, %struct.mem_chunk** %8, align 8
  %23 = call i32 @detect_memory_layout(%struct.mem_chunk* %22)
  %24 = load i32, i32* @MEMORY_CHUNKS, align 4
  %25 = load i32, i32* @CHUNK_INFO_SIZE, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kzalloc(i32 %26, i32 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %21
  %32 = load %struct.mem_chunk*, %struct.mem_chunk** %8, align 8
  %33 = call i32 @kfree(%struct.mem_chunk* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %79

36:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %70, %36
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @MEMORY_CHUNKS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @CHUNK_INFO_SIZE, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  %48 = load %struct.mem_chunk*, %struct.mem_chunk** %8, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %48, i64 %50
  %52 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.mem_chunk*, %struct.mem_chunk** %8, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %54, i64 %56
  %58 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %59)
  %61 = load %struct.mem_chunk*, %struct.mem_chunk** %8, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %61, i64 %63
  %65 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %41
  br label %73

69:                                               ; preds = %41
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %37

73:                                               ; preds = %68, %37
  %74 = load %struct.mem_chunk*, %struct.mem_chunk** %8, align 8
  %75 = call i32 @kfree(%struct.mem_chunk* %74)
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.file*, %struct.file** %5, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %73, %31, %18
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @detect_memory_layout(%struct.mem_chunk*) #1

declare dso_local i32 @kfree(%struct.mem_chunk*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
