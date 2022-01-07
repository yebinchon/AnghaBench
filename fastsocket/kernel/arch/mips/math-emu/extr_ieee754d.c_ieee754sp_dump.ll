; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_ieee754d.c_ieee754sp_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_ieee754d.c_ieee754sp_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%s=\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"<%08x>\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\09=\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Nan %c\00", align 1
@SP_FBITS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%cInfinity\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%cZero\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%c0.\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"e%d\00", align 1
@SP_EBIAS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"%c1.\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Illegal/Unknown IEEE754 value class\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ieee754sp_dump(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i64 %1, i64* %7, align 8
  store i8* %0, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @ieee754sp_class(i64 %16)
  switch i32 %17, label %130 [
    i32 130, label %18
    i32 129, label %18
    i32 132, label %46
    i32 128, label %54
    i32 133, label %62
    i32 131, label %96
  ]

18:                                               ; preds = %2, %2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @SPSIGN(i64 %20)
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 45, i32 43
  %25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @SP_FBITS, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %42, %18
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @SPMANT(i64 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @SP_MBIT(i32 %35)
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 49, i32 48
  %41 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  br label %28

45:                                               ; preds = %28
  br label %132

46:                                               ; preds = %2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @SPSIGN(i64 %48)
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 45, i32 43
  %53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  br label %132

54:                                               ; preds = %2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @SPSIGN(i64 %56)
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 45, i32 43
  %61 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %60)
  br label %132

62:                                               ; preds = %2
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @SPSIGN(i64 %64)
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 45, i32 43
  %69 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @SP_FBITS, align 4
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %86, %62
  %73 = load i32, i32* %6, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @SPMANT(i64 %77)
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @SP_MBIT(i32 %79)
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 49, i32 48
  %85 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %6, align 4
  br label %72

89:                                               ; preds = %72
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @SPBEXP(i64 %91)
  %93 = load i64, i64* @SP_EBIAS, align 8
  %94 = sub nsw i64 %92, %93
  %95 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 %94)
  br label %132

96:                                               ; preds = %2
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @SPSIGN(i64 %98)
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 45, i32 43
  %103 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @SP_FBITS, align 4
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %120, %96
  %107 = load i32, i32* %6, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @SPMANT(i64 %111)
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @SP_MBIT(i32 %113)
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 49, i32 48
  %119 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %109
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %6, align 4
  br label %106

123:                                              ; preds = %106
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @SPBEXP(i64 %125)
  %127 = load i64, i64* @SP_EBIAS, align 8
  %128 = sub nsw i64 %126, %127
  %129 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 %128)
  br label %132

130:                                              ; preds = %2
  %131 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %123, %89, %54, %46, %45
  %133 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %134 = bitcast %struct.TYPE_8__* %3 to i8*
  %135 = bitcast %struct.TYPE_8__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %134, i8* align 8 %135, i64 8, i1 false)
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  ret i64 %137
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @ieee754sp_class(i64) #1

declare dso_local i32 @SPSIGN(i64) #1

declare dso_local i32 @SPMANT(i64) #1

declare dso_local i32 @SP_MBIT(i32) #1

declare dso_local i64 @SPBEXP(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
