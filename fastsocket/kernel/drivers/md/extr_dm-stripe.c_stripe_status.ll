; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-stripe.c_stripe_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-stripe.c_stripe_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i64 }
%struct.stripe_c = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"1 %s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%d %llu\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" %s %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8*, i32)* @stripe_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_status(%struct.dm_target* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stripe_c*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %15 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.stripe_c*
  store %struct.stripe_c* %17, %struct.stripe_c** %9, align 8
  %18 = load %struct.stripe_c*, %struct.stripe_c** %9, align 8
  %19 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %110 [
    i32 129, label %26
    i32 128, label %72
  ]

26:                                               ; preds = %4
  %27 = load %struct.stripe_c*, %struct.stripe_c** %9, align 8
  %28 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %64, %26
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.stripe_c*, %struct.stripe_c** %9, align 8
  %34 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %31
  %38 = load %struct.stripe_c*, %struct.stripe_c** %9, align 8
  %39 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %13, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.stripe_c*, %struct.stripe_c** %9, align 8
  %50 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = call i32 @atomic_read(i32* %55)
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 68, i32 65
  %60 = trunc i32 %59 to i8
  %61 = load i32, i32* %13, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %24, i64 %62
  store i8 %60, i8* %63, align 1
  br label %64

64:                                               ; preds = %37
  %65 = load i32, i32* %13, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %31

67:                                               ; preds = %31
  %68 = load i32, i32* %13, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %24, i64 %69
  store i8 0, i8* %70, align 1
  %71 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  br label %110

72:                                               ; preds = %4
  %73 = load %struct.stripe_c*, %struct.stripe_c** %9, align 8
  %74 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.stripe_c*, %struct.stripe_c** %9, align 8
  %77 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %75, i64 %78)
  store i32 0, i32* %13, align 4
  br label %80

80:                                               ; preds = %106, %72
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.stripe_c*, %struct.stripe_c** %9, align 8
  %83 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ult i32 %81, %84
  br i1 %85, label %86, label %109

86:                                               ; preds = %80
  %87 = load %struct.stripe_c*, %struct.stripe_c** %9, align 8
  %88 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.stripe_c*, %struct.stripe_c** %9, align 8
  %98 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %96, i64 %104)
  br label %106

106:                                              ; preds = %86
  %107 = load i32, i32* %13, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %80

109:                                              ; preds = %80
  br label %110

110:                                              ; preds = %4, %109, %67
  %111 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %111)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DMEMIT(i8*, ...) #2

declare dso_local i32 @atomic_read(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
