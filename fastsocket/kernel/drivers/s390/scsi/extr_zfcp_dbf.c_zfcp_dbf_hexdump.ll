; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hexdump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hexdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_dbf_dump = type { i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@ZFCP_DBF_TAG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i32, i8*, i32)* @zfcp_dbf_hexdump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_dbf_hexdump(i32* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.zfcp_dbf_dump*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.zfcp_dbf_dump*
  store %struct.zfcp_dbf_dump* %17, %struct.zfcp_dbf_dump** %14, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 24
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %67, %6
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %75

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @memset(i8* %27, i32 0, i32 %28)
  %30 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %14, align 8
  %31 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %34 = call i32 @strncpy(i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %14, align 8
  %37 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %14, align 8
  %40 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load i32, i32* %15, align 4
  %45 = call i64 @min(i32 %43, i32 %44)
  %46 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %14, align 8
  %47 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %14, align 8
  %49 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %14, align 8
  %56 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @memcpy(i32 %50, i8* %54, i64 %57)
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %14, align 8
  %62 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %14, align 8
  %63 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 24
  %66 = call i32 @debug_event(i32* %59, i32 %60, %struct.zfcp_dbf_dump* %61, i64 %65)
  br label %67

67:                                               ; preds = %26
  %68 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %14, align 8
  %69 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %13, align 4
  br label %22

75:                                               ; preds = %22
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @debug_event(i32*, i32, %struct.zfcp_dbf_dump*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
