; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_int_to_ext_kekl_pair.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_int_to_ext_kekl_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape3592_kekl_pair = type { i32, i32* }
%struct.tape390_kekl_pair = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }

@TAPE390_KEKL_TYPE_NONE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Invalid KEKL number: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tape3592_kekl_pair*, %struct.tape390_kekl_pair*)* @int_to_ext_kekl_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @int_to_ext_kekl_pair(%struct.tape3592_kekl_pair* %0, %struct.tape390_kekl_pair* %1) #0 {
  %3 = alloca %struct.tape3592_kekl_pair*, align 8
  %4 = alloca %struct.tape390_kekl_pair*, align 8
  store %struct.tape3592_kekl_pair* %0, %struct.tape3592_kekl_pair** %3, align 8
  store %struct.tape390_kekl_pair* %1, %struct.tape390_kekl_pair** %4, align 8
  %5 = load %struct.tape3592_kekl_pair*, %struct.tape3592_kekl_pair** %3, align 8
  %6 = getelementptr inbounds %struct.tape3592_kekl_pair, %struct.tape3592_kekl_pair* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = load i8*, i8** @TAPE390_KEKL_TYPE_NONE, align 8
  %11 = load %struct.tape390_kekl_pair*, %struct.tape390_kekl_pair** %4, align 8
  %12 = getelementptr inbounds %struct.tape390_kekl_pair, %struct.tape390_kekl_pair* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i8* %10, i8** %15, align 8
  %16 = load i8*, i8** @TAPE390_KEKL_TYPE_NONE, align 8
  %17 = load %struct.tape390_kekl_pair*, %struct.tape390_kekl_pair** %4, align 8
  %18 = getelementptr inbounds %struct.tape390_kekl_pair, %struct.tape390_kekl_pair* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i8* %16, i8** %21, align 8
  %22 = load i8*, i8** @TAPE390_KEKL_TYPE_NONE, align 8
  %23 = load %struct.tape390_kekl_pair*, %struct.tape390_kekl_pair** %4, align 8
  %24 = getelementptr inbounds %struct.tape390_kekl_pair, %struct.tape390_kekl_pair* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i8* %22, i8** %27, align 8
  %28 = load i8*, i8** @TAPE390_KEKL_TYPE_NONE, align 8
  %29 = load %struct.tape390_kekl_pair*, %struct.tape390_kekl_pair** %4, align 8
  %30 = getelementptr inbounds %struct.tape390_kekl_pair, %struct.tape390_kekl_pair* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i8* %28, i8** %33, align 8
  br label %93

34:                                               ; preds = %2
  %35 = load %struct.tape3592_kekl_pair*, %struct.tape3592_kekl_pair** %3, align 8
  %36 = getelementptr inbounds %struct.tape3592_kekl_pair, %struct.tape3592_kekl_pair* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %61

39:                                               ; preds = %34
  %40 = load %struct.tape3592_kekl_pair*, %struct.tape3592_kekl_pair** %3, align 8
  %41 = getelementptr inbounds %struct.tape3592_kekl_pair, %struct.tape3592_kekl_pair* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load %struct.tape390_kekl_pair*, %struct.tape390_kekl_pair** %4, align 8
  %45 = getelementptr inbounds %struct.tape390_kekl_pair, %struct.tape390_kekl_pair* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 0
  %48 = call i32 @int_to_ext_kekl(i32* %43, %struct.TYPE_2__* %47)
  %49 = load i8*, i8** @TAPE390_KEKL_TYPE_NONE, align 8
  %50 = load %struct.tape390_kekl_pair*, %struct.tape390_kekl_pair** %4, align 8
  %51 = getelementptr inbounds %struct.tape390_kekl_pair, %struct.tape390_kekl_pair* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i8* %49, i8** %54, align 8
  %55 = load i8*, i8** @TAPE390_KEKL_TYPE_NONE, align 8
  %56 = load %struct.tape390_kekl_pair*, %struct.tape390_kekl_pair** %4, align 8
  %57 = getelementptr inbounds %struct.tape390_kekl_pair, %struct.tape390_kekl_pair* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i8* %55, i8** %60, align 8
  br label %92

61:                                               ; preds = %34
  %62 = load %struct.tape3592_kekl_pair*, %struct.tape3592_kekl_pair** %3, align 8
  %63 = getelementptr inbounds %struct.tape3592_kekl_pair, %struct.tape3592_kekl_pair* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %85

66:                                               ; preds = %61
  %67 = load %struct.tape3592_kekl_pair*, %struct.tape3592_kekl_pair** %3, align 8
  %68 = getelementptr inbounds %struct.tape3592_kekl_pair, %struct.tape3592_kekl_pair* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load %struct.tape390_kekl_pair*, %struct.tape390_kekl_pair** %4, align 8
  %72 = getelementptr inbounds %struct.tape390_kekl_pair, %struct.tape390_kekl_pair* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 0
  %75 = call i32 @int_to_ext_kekl(i32* %70, %struct.TYPE_2__* %74)
  %76 = load %struct.tape3592_kekl_pair*, %struct.tape3592_kekl_pair** %3, align 8
  %77 = getelementptr inbounds %struct.tape3592_kekl_pair, %struct.tape3592_kekl_pair* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load %struct.tape390_kekl_pair*, %struct.tape390_kekl_pair** %4, align 8
  %81 = getelementptr inbounds %struct.tape390_kekl_pair, %struct.tape390_kekl_pair* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 1
  %84 = call i32 @int_to_ext_kekl(i32* %79, %struct.TYPE_2__* %83)
  br label %91

85:                                               ; preds = %61
  %86 = load %struct.tape3592_kekl_pair*, %struct.tape3592_kekl_pair** %3, align 8
  %87 = getelementptr inbounds %struct.tape3592_kekl_pair, %struct.tape3592_kekl_pair* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = call i32 (...) @BUG()
  br label %91

91:                                               ; preds = %85, %66
  br label %92

92:                                               ; preds = %91, %39
  br label %93

93:                                               ; preds = %92, %9
  ret void
}

declare dso_local i32 @int_to_ext_kekl(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
