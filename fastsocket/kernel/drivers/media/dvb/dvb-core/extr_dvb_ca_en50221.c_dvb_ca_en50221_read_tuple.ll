; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_read_tuple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_read_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_private = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, i32)* }

@.str = private unnamed_addr constant [30 x i8] c"END OF CHAIN TUPLE type:0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"TUPLE type:0x%x length:%i\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"  0x%02x: 0x%02x %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_private*, i32, i32*, i32*, i32*, i32*)* @dvb_ca_en50221_read_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_ca_en50221_read_tuple(%struct.dvb_ca_private* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_ca_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dvb_ca_private* %0, %struct.dvb_ca_private** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %17, align 4
  %20 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %8, align 8
  %21 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %23, align 8
  %25 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %8, align 8
  %26 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %17, align 4
  %30 = call i32 %24(%struct.TYPE_4__* %27, i32 %28, i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %7, align 4
  br label %135

34:                                               ; preds = %6
  %35 = load i32, i32* %15, align 4
  %36 = icmp eq i32 %35, 255
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32, i32* %15, align 4
  %39 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 2
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32*, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %12, align 8
  store i32 0, i32* %45, align 4
  store i32 0, i32* %7, align 4
  br label %135

46:                                               ; preds = %34
  %47 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %8, align 8
  %48 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %50, align 8
  %52 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %8, align 8
  %53 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %17, align 4
  %57 = add nsw i32 %56, 2
  %58 = call i32 %51(%struct.TYPE_4__* %54, i32 %55, i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = load i32, i32* %16, align 4
  store i32 %61, i32* %7, align 4
  br label %135

62:                                               ; preds = %46
  %63 = load i32, i32* %17, align 4
  %64 = add nsw i32 %63, 4
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66)
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %121, %62
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %124

72:                                               ; preds = %68
  %73 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %8, align 8
  %74 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %76, align 8
  %78 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %8, align 8
  %79 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %14, align 4
  %84 = mul nsw i32 %83, 2
  %85 = add nsw i32 %82, %84
  %86 = call i32 %77(%struct.TYPE_4__* %80, i32 %81, i32 %85)
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 255
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %102, 31
  br i1 %103, label %104, label %117

104:                                              ; preds = %72
  %105 = load i32*, i32** %13, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %109, 127
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  br label %118

117:                                              ; preds = %104, %72
  br label %118

118:                                              ; preds = %117, %111
  %119 = phi i32 [ %116, %111 ], [ 46, %117 ]
  %120 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %97, i32 %119)
  br label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %68

124:                                              ; preds = %68
  %125 = load i32, i32* %16, align 4
  %126 = mul nsw i32 %125, 2
  %127 = load i32, i32* %17, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %17, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load i32*, i32** %11, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* %16, align 4
  %132 = load i32*, i32** %12, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %17, align 4
  %134 = load i32*, i32** %10, align 8
  store i32 %133, i32* %134, align 4
  store i32 0, i32* %7, align 4
  br label %135

135:                                              ; preds = %124, %60, %37, %32
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

declare dso_local i32 @dprintk(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
