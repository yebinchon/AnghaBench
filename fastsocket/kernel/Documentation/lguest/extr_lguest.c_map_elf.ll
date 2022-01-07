; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_map_elf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_map_elf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32, i64, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i64, i32 }

@ET_EXEC = common dso_local global i64 0, align 8
@EM_386 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Malformed elf header\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Seeking to program headers\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Reading program headers\00", align 1
@PT_LOAD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Section %i: size %i addr %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_6__*)* @map_elf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @map_elf(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca %struct.TYPE_5__, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ET_EXEC, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %42, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EM_386, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %42, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 32
  br i1 %30, label %42, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = icmp ugt i64 %40, 2048
  br i1 %41, label %42, label %44

42:                                               ; preds = %36, %31, %25, %19, %2
  %43 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %36
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SEEK_SET, align 4
  %50 = call i64 @lseek(i32 %45, i32 %48, i32 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %44
  %55 = load i32, i32* %3, align 4
  %56 = mul nuw i64 32, %11
  %57 = trunc i64 %56 to i32
  %58 = call i32 @read(i32 %55, %struct.TYPE_5__* %13, i32 %57)
  %59 = sext i32 %58 to i64
  %60 = mul nuw i64 32, %11
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %54
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %112, %64
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %115

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 16
  %77 = load i64, i64* @PT_LOAD, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %112

80:                                               ; preds = %71
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 16
  %92 = inttoptr i64 %91 to i8*
  %93 = call i32 @verbose(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %86, i8* %92)
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* %7, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 16
  %100 = call i32 @from_guest_phys(i64 %99)
  %101 = load i32, i32* %7, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %7, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @map_at(i32 %94, i32 %100, i32 %105, i32 %110)
  br label %112

112:                                              ; preds = %80, %79
  %113 = load i32, i32* %7, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %65

115:                                              ; preds = %65
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %119)
  ret i64 %118
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i64 @lseek(i32, i32, i32) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @read(i32, %struct.TYPE_5__*, i32) #2

declare dso_local i32 @verbose(i8*, i32, i32, i8*) #2

declare dso_local i32 @map_at(i32, i32, i32, i32) #2

declare dso_local i32 @from_guest_phys(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
