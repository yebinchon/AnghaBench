; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_epat.c_epat_test_proto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_epat.c_epat_test_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"%s: epat: port 0x%x, mode %d, ccr %x, test=(%d,%d,%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32)* @epat_test_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epat_test_proto(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = bitcast [2 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = call i32 @epat_connect(%struct.TYPE_6__* %13)
  %15 = call i32 @RR(i32 13)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = call i32 @epat_disconnect(%struct.TYPE_6__* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = call i32 @epat_connect(%struct.TYPE_6__* %18)
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %53, %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %56

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 %24, 16
  %26 = add nsw i32 160, %25
  %27 = call i32 @WRi(i32 6, i32 %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %49, %23
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 256
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = xor i32 %32, 170
  %34 = call i32 @WRi(i32 2, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = xor i32 %35, 85
  %37 = call i32 @WRi(i32 3, i32 %36)
  %38 = call i32 @RRi(i32 2)
  %39 = load i32, i32* %7, align 4
  %40 = xor i32 %39, 170
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %31
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %28

52:                                               ; preds = %28
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %20

56:                                               ; preds = %20
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = call i32 @epat_disconnect(%struct.TYPE_6__* %57)
  store i32 0, i32* %9, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = call i32 @epat_connect(%struct.TYPE_6__* %59)
  %61 = call i32 @WR(i32 19, i32 1)
  %62 = call i32 @WR(i32 19, i32 0)
  %63 = call i32 @WR(i32 10, i32 17)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @epat_read_block(%struct.TYPE_6__* %64, i8* %65, i32 512)
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %101, %56
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 256
  br i1 %69, label %70, label %104

70:                                               ; preds = %67
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = mul nsw i32 2, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = and i32 %77, 255
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %81, %70
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* %7, align 4
  %87 = mul nsw i32 2, %86
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %85, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = and i32 %92, 255
  %94 = load i32, i32* %7, align 4
  %95 = sub nsw i32 255, %94
  %96 = icmp ne i32 %93, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %84
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %97, %84
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %67

104:                                              ; preds = %67
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %106 = call i32 @epat_disconnect(%struct.TYPE_6__* %105)
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %104
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %10, align 4
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %115, i32 %118, i32 %119, i32 %121, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %109, %104
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %130, %126
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br label %137

137:                                              ; preds = %134, %130
  %138 = phi i1 [ true, %130 ], [ %136, %134 ]
  %139 = zext i1 %138 to i32
  ret i32 %139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @epat_connect(%struct.TYPE_6__*) #2

declare dso_local i32 @RR(i32) #2

declare dso_local i32 @epat_disconnect(%struct.TYPE_6__*) #2

declare dso_local i32 @WRi(i32, i32) #2

declare dso_local i32 @RRi(i32) #2

declare dso_local i32 @WR(i32, i32) #2

declare dso_local i32 @epat_read_block(%struct.TYPE_6__*, i8*, i32) #2

declare dso_local i32 @printk(i8*, i32, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
