; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsicam.c_scsi_partsize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsicam.c_scsi_partsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partition = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_partsize(i8* %0, i64 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.partition*, align 8
  %13 = alloca %struct.partition*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to %struct.partition*
  store %struct.partition* %25, %struct.partition** %12, align 8
  store %struct.partition* null, %struct.partition** %13, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 64
  %28 = bitcast i8* %27 to i16*
  %29 = load i16, i16* %28, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp eq i32 %30, 43605
  br i1 %31, label %32, label %65

32:                                               ; preds = %5
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %59, %32
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %64

36:                                               ; preds = %33
  %37 = load %struct.partition*, %struct.partition** %12, align 8
  %38 = getelementptr inbounds %struct.partition, %struct.partition* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %59

42:                                               ; preds = %36
  %43 = load %struct.partition*, %struct.partition** %12, align 8
  %44 = getelementptr inbounds %struct.partition, %struct.partition* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.partition*, %struct.partition** %12, align 8
  %47 = getelementptr inbounds %struct.partition, %struct.partition* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 192
  %50 = shl i32 %49, 2
  %51 = add nsw i32 %45, %50
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load i32, i32* %16, align 4
  store i32 %56, i32* %15, align 4
  %57 = load %struct.partition*, %struct.partition** %12, align 8
  store %struct.partition* %57, %struct.partition** %13, align 8
  br label %58

58:                                               ; preds = %55, %42
  br label %59

59:                                               ; preds = %58, %41
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  %62 = load %struct.partition*, %struct.partition** %12, align 8
  %63 = getelementptr inbounds %struct.partition, %struct.partition* %62, i32 1
  store %struct.partition* %63, %struct.partition** %12, align 8
  br label %33

64:                                               ; preds = %33
  br label %65

65:                                               ; preds = %64, %5
  %66 = load %struct.partition*, %struct.partition** %13, align 8
  %67 = icmp ne %struct.partition* %66, null
  br i1 %67, label %68, label %162

68:                                               ; preds = %65
  %69 = load %struct.partition*, %struct.partition** %13, align 8
  %70 = getelementptr inbounds %struct.partition, %struct.partition* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.partition*, %struct.partition** %13, align 8
  %73 = getelementptr inbounds %struct.partition, %struct.partition* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 192
  %76 = shl i32 %75, 2
  %77 = add nsw i32 %71, %76
  store i32 %77, i32* %19, align 4
  %78 = load %struct.partition*, %struct.partition** %13, align 8
  %79 = getelementptr inbounds %struct.partition, %struct.partition* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %18, align 4
  %81 = load %struct.partition*, %struct.partition** %13, align 8
  %82 = getelementptr inbounds %struct.partition, %struct.partition* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 63
  store i32 %84, i32* %20, align 4
  %85 = load i32, i32* %18, align 4
  %86 = add nsw i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %68
  %89 = load i32, i32* %20, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88, %68
  store i32 -1, i32* %6, align 4
  br label %163

92:                                               ; preds = %88
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %18, align 4
  %95 = add nsw i32 %94, 1
  %96 = mul nsw i32 %93, %95
  %97 = load i32, i32* %20, align 4
  %98 = mul nsw i32 %96, %97
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %20, align 4
  %101 = mul nsw i32 %99, %100
  %102 = add nsw i32 %98, %101
  %103 = load i32, i32* %20, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %22, align 4
  %105 = load %struct.partition*, %struct.partition** %13, align 8
  %106 = getelementptr inbounds %struct.partition, %struct.partition* %105, i32 0, i32 6
  %107 = call i32 @get_unaligned(i32* %106)
  %108 = load %struct.partition*, %struct.partition** %13, align 8
  %109 = getelementptr inbounds %struct.partition, %struct.partition* %108, i32 0, i32 5
  %110 = call i32 @get_unaligned(i32* %109)
  %111 = add i32 %107, %110
  store i32 %111, i32* %21, align 4
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* %20, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load i32, i32* %20, align 4
  %117 = add nsw i32 %115, %116
  %118 = sub i32 %112, %117
  %119 = load i32, i32* %18, align 4
  %120 = add nsw i32 %119, 1
  %121 = udiv i32 %118, %120
  %122 = load i32, i32* %20, align 4
  %123 = udiv i32 %121, %122
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %18, align 4
  %126 = add nsw i32 %125, 1
  %127 = mul nsw i32 %124, %126
  %128 = load i32, i32* %20, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %20, align 4
  %132 = mul nsw i32 %130, %131
  %133 = add nsw i32 %129, %132
  %134 = load i32, i32* %20, align 4
  %135 = add nsw i32 %133, %134
  store i32 %135, i32* %23, align 4
  %136 = load i32, i32* %21, align 4
  %137 = load i32, i32* %22, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %146, label %139

139:                                              ; preds = %92
  %140 = load i32, i32* %19, align 4
  %141 = icmp eq i32 %140, 1023
  br i1 %141, label %142, label %161

142:                                              ; preds = %139
  %143 = load i32, i32* %23, align 4
  %144 = load i32, i32* %21, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %142, %92
  %147 = load i32, i32* %20, align 4
  %148 = load i32*, i32** %11, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* %18, align 4
  %150 = add nsw i32 %149, 1
  %151 = load i32*, i32** %10, align 8
  store i32 %150, i32* %151, align 4
  %152 = load i64, i64* %8, align 8
  %153 = load i32, i32* %18, align 4
  %154 = add nsw i32 %153, 1
  %155 = load i32, i32* %20, align 4
  %156 = mul nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = udiv i64 %152, %157
  %159 = trunc i64 %158 to i32
  %160 = load i32*, i32** %9, align 8
  store i32 %159, i32* %160, align 4
  store i32 0, i32* %6, align 4
  br label %163

161:                                              ; preds = %142, %139
  br label %162

162:                                              ; preds = %161, %65
  store i32 -1, i32* %6, align 4
  br label %163

163:                                              ; preds = %162, %146, %91
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local i32 @get_unaligned(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
