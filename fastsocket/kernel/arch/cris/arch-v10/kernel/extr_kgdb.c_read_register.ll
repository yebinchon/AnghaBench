; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_kgdb.c_read_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_kgdb.c_read_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@reg = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@R0 = common dso_local global i8 0, align 1
@PC = common dso_local global i8 0, align 1
@SUCCESS = common dso_local global i32 0, align 4
@P0 = common dso_local global i8 0, align 1
@VR = common dso_local global i8 0, align 1
@P4 = common dso_local global i8 0, align 1
@CCR = common dso_local global i8 0, align 1
@MOF = common dso_local global i8 0, align 1
@USP = common dso_local global i8 0, align 1
@P8 = common dso_local global i8 0, align 1
@E05 = common dso_local global i32 0, align 4
@consistency_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i32*)* @read_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_register(i8 signext %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i8 %0, i8* %4, align 1
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_3__* @reg, %struct.TYPE_3__** %6, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = load i8, i8* @R0, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp sge i32 %8, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load i8, i8* %4, align 1
  %14 = sext i8 %13 to i32
  %15 = load i8, i8* @PC, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp sle i32 %14, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = bitcast %struct.TYPE_3__* %19 to i8*
  %21 = load i8, i8* %4, align 1
  %22 = sext i8 %21 to i64
  %23 = mul i64 %22, 4
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @SUCCESS, align 4
  store i32 %28, i32* %3, align 4
  br label %117

29:                                               ; preds = %12, %2
  %30 = load i8, i8* %4, align 1
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* @P0, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i8, i8* %4, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8, i8* @VR, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %35, %29
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = bitcast i32* %43 to i8*
  %45 = load i8, i8* %4, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8, i8* @P0, align 1
  %48 = sext i8 %47 to i32
  %49 = sub nsw i32 %46, %48
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 1
  %52 = getelementptr inbounds i8, i8* %44, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @SUCCESS, align 4
  store i32 %56, i32* %3, align 4
  br label %117

57:                                               ; preds = %35
  %58 = load i8, i8* %4, align 1
  %59 = sext i8 %58 to i32
  %60 = load i8, i8* @P4, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load i8, i8* %4, align 1
  %65 = sext i8 %64 to i32
  %66 = load i8, i8* @CCR, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %63, %57
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = bitcast i32* %71 to i8*
  %73 = load i8, i8* %4, align 1
  %74 = sext i8 %73 to i32
  %75 = load i8, i8* @P4, align 1
  %76 = sext i8 %75 to i32
  %77 = sub nsw i32 %74, %76
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 2
  %80 = getelementptr inbounds i8, i8* %72, i64 %79
  %81 = bitcast i8* %80 to i16*
  %82 = load i16, i16* %81, align 2
  %83 = zext i16 %82 to i32
  %84 = load i32*, i32** %5, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* @SUCCESS, align 4
  store i32 %85, i32* %3, align 4
  br label %117

86:                                               ; preds = %63
  %87 = load i8, i8* %4, align 1
  %88 = sext i8 %87 to i32
  %89 = load i8, i8* @MOF, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp sge i32 %88, %90
  br i1 %91, label %92, label %114

92:                                               ; preds = %86
  %93 = load i8, i8* %4, align 1
  %94 = sext i8 %93 to i32
  %95 = load i8, i8* @USP, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp sle i32 %94, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %92
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = bitcast i32* %100 to i8*
  %102 = load i8, i8* %4, align 1
  %103 = sext i8 %102 to i32
  %104 = load i8, i8* @P8, align 1
  %105 = sext i8 %104 to i32
  %106 = sub nsw i32 %103, %105
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = getelementptr inbounds i8, i8* %101, i64 %108
  %110 = bitcast i8* %109 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %5, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* @SUCCESS, align 4
  store i32 %113, i32* %3, align 4
  br label %117

114:                                              ; preds = %92, %86
  %115 = load i32, i32* @E05, align 4
  store i32 %115, i32* @consistency_status, align 4
  %116 = load i32, i32* @E05, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %114, %98, %69, %41, %18
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
