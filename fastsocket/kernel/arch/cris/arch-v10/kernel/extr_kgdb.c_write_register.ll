; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_kgdb.c_write_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_kgdb.c_write_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SUCCESS = common dso_local global i32 0, align 4
@reg = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@R0 = common dso_local global i32 0, align 4
@PC = common dso_local global i32 0, align 4
@P0 = common dso_local global i32 0, align 4
@VR = common dso_local global i32 0, align 4
@P4 = common dso_local global i32 0, align 4
@P8 = common dso_local global i32 0, align 4
@E02 = common dso_local global i32 0, align 4
@CCR = common dso_local global i32 0, align 4
@MOF = common dso_local global i32 0, align 4
@USP = common dso_local global i32 0, align 4
@IBR = common dso_local global i32 0, align 4
@E05 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @write_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_register(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @SUCCESS, align 4
  store i32 %7, i32* %5, align 4
  store %struct.TYPE_3__* @reg, %struct.TYPE_3__** %6, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @R0, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @PC, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = bitcast %struct.TYPE_3__* %16 to i8*
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @hex2mem(i8* %21, i8* %22, i32 4)
  br label %83

24:                                               ; preds = %11, %2
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @P0, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @VR, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @P4, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @P8, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %32, %28, %24
  %41 = load i32, i32* @E02, align 4
  store i32 %41, i32* %5, align 4
  br label %82

42:                                               ; preds = %36
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @CCR, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = bitcast i32* %48 to i8*
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @CCR, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 2
  %55 = getelementptr inbounds i8, i8* %49, i64 %54
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @hex2mem(i8* %55, i8* %56, i32 2)
  br label %81

58:                                               ; preds = %42
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @MOF, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @USP, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = bitcast i32* %68 to i8*
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @IBR, align 4
  %72 = sub nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = getelementptr inbounds i8, i8* %69, i64 %74
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @hex2mem(i8* %75, i8* %76, i32 4)
  br label %80

78:                                               ; preds = %62, %58
  %79 = load i32, i32* @E05, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %66
  br label %81

81:                                               ; preds = %80, %46
  br label %82

82:                                               ; preds = %81, %40
  br label %83

83:                                               ; preds = %82, %15
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @hex2mem(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
