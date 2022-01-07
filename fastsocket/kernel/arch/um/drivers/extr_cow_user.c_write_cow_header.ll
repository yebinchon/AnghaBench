; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_cow_user.c_write_cow_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_cow_user.c_write_cow_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cow_header_v3 = type { i8*, i32, i8*, i8*, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [43 x i8] c"write_cow_header - lseek failed, err = %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"write_cow_header - failed to allocate COW V3 header\0A\00", align 1
@COW_MAGIC = common dso_local global i32 0, align 4
@COW_VERSION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"Backing file name \22%s\22 is too long - names are limited to %zd characters\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"write_cow_header - backing file '%s' mtime request failed, err = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"write_cow_header - couldn't get size of backing file '%s', err = %d\0A\00", align 1
@COW_BITMAP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [74 x i8] c"write_cow_header - write of header to new COW file '%s' failed, err = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_cow_header(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca %struct.cow_header_v3*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64* %5, i64** %12, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @cow_seek_file(i32 %16, i32 0)
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %15, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load i32, i32* %15, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32 (i8*, ...) @cow_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %124

24:                                               ; preds = %6
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %15, align 4
  %27 = call %struct.cow_header_v3* @cow_malloc(i32 64)
  store %struct.cow_header_v3* %27, %struct.cow_header_v3** %13, align 8
  %28 = load %struct.cow_header_v3*, %struct.cow_header_v3** %13, align 8
  %29 = icmp eq %struct.cow_header_v3* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 (i8*, ...) @cow_printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %124

32:                                               ; preds = %24
  %33 = load i32, i32* @COW_MAGIC, align 4
  %34 = call i8* @htonl(i32 %33)
  %35 = load %struct.cow_header_v3*, %struct.cow_header_v3** %13, align 8
  %36 = getelementptr inbounds %struct.cow_header_v3, %struct.cow_header_v3* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @COW_VERSION, align 4
  %38 = call i8* @htonl(i32 %37)
  %39 = load %struct.cow_header_v3*, %struct.cow_header_v3** %13, align 8
  %40 = getelementptr inbounds %struct.cow_header_v3, %struct.cow_header_v3* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %15, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = sext i32 %44 to i64
  %46 = icmp ugt i64 %45, 7
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 (i8*, ...) @cow_printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i8* %48, i64 7)
  br label %121

50:                                               ; preds = %32
  %51 = load %struct.cow_header_v3*, %struct.cow_header_v3** %13, align 8
  %52 = getelementptr inbounds %struct.cow_header_v3, %struct.cow_header_v3* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i64 @absolutize(i8* %53, i32 8, i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %121

58:                                               ; preds = %50
  %59 = load %struct.cow_header_v3*, %struct.cow_header_v3** %13, align 8
  %60 = getelementptr inbounds %struct.cow_header_v3, %struct.cow_header_v3* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @os_file_modtime(i8* %61, i64* %14)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.cow_header_v3*, %struct.cow_header_v3** %13, align 8
  %67 = getelementptr inbounds %struct.cow_header_v3, %struct.cow_header_v3* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sub nsw i32 0, %69
  %71 = call i32 (i8*, ...) @cow_printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i8* %68, i32 %70)
  br label %121

72:                                               ; preds = %58
  %73 = load %struct.cow_header_v3*, %struct.cow_header_v3** %13, align 8
  %74 = getelementptr inbounds %struct.cow_header_v3, %struct.cow_header_v3* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i64*, i64** %12, align 8
  %77 = call i32 @cow_file_size(i8* %75, i64* %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load %struct.cow_header_v3*, %struct.cow_header_v3** %13, align 8
  %82 = getelementptr inbounds %struct.cow_header_v3, %struct.cow_header_v3* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sub nsw i32 0, %84
  %86 = call i32 (i8*, ...) @cow_printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i8* %83, i32 %85)
  br label %121

87:                                               ; preds = %72
  %88 = load i64, i64* %14, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i8* @htonl(i32 %89)
  %91 = load %struct.cow_header_v3*, %struct.cow_header_v3** %13, align 8
  %92 = getelementptr inbounds %struct.cow_header_v3, %struct.cow_header_v3* %91, i32 0, i32 5
  store i8* %90, i8** %92, align 8
  %93 = load i64*, i64** %12, align 8
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @htonll(i64 %94)
  %96 = load %struct.cow_header_v3*, %struct.cow_header_v3** %13, align 8
  %97 = getelementptr inbounds %struct.cow_header_v3, %struct.cow_header_v3* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i8* @htonl(i32 %98)
  %100 = load %struct.cow_header_v3*, %struct.cow_header_v3** %13, align 8
  %101 = getelementptr inbounds %struct.cow_header_v3, %struct.cow_header_v3* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i8* @htonl(i32 %102)
  %104 = load %struct.cow_header_v3*, %struct.cow_header_v3** %13, align 8
  %105 = getelementptr inbounds %struct.cow_header_v3, %struct.cow_header_v3* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* @COW_BITMAP, align 4
  %107 = load %struct.cow_header_v3*, %struct.cow_header_v3** %13, align 8
  %108 = getelementptr inbounds %struct.cow_header_v3, %struct.cow_header_v3* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.cow_header_v3*, %struct.cow_header_v3** %13, align 8
  %111 = call i32 @cow_write_file(i32 %109, %struct.cow_header_v3* %110, i32 64)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp ne i64 %113, 64
  br i1 %114, label %115, label %120

115:                                              ; preds = %87
  %116 = load i8*, i8** %7, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sub nsw i32 0, %117
  %119 = call i32 (i8*, ...) @cow_printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i8* %116, i32 %118)
  br label %121

120:                                              ; preds = %87
  store i32 0, i32* %15, align 4
  br label %121

121:                                              ; preds = %120, %115, %80, %65, %57, %47
  %122 = load %struct.cow_header_v3*, %struct.cow_header_v3** %13, align 8
  %123 = call i32 @cow_free(%struct.cow_header_v3* %122)
  br label %124

124:                                              ; preds = %121, %30, %20
  %125 = load i32, i32* %15, align 4
  ret i32 %125
}

declare dso_local i32 @cow_seek_file(i32, i32) #1

declare dso_local i32 @cow_printf(i8*, ...) #1

declare dso_local %struct.cow_header_v3* @cow_malloc(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @absolutize(i8*, i32, i8*) #1

declare dso_local i32 @os_file_modtime(i8*, i64*) #1

declare dso_local i32 @cow_file_size(i8*, i64*) #1

declare dso_local i32 @htonll(i64) #1

declare dso_local i32 @cow_write_file(i32, %struct.cow_header_v3*, i32) #1

declare dso_local i32 @cow_free(%struct.cow_header_v3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
