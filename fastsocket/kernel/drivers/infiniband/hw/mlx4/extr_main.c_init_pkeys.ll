; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c_init_pkeys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c_init_pkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32***, i32** }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_dev*)* @init_pkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_pkeys(%struct.mlx4_ib_dev* %0) #0 {
  %2 = alloca %struct.mlx4_ib_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %2, align 8
  %6 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = call i64 @mlx4_is_master(%struct.TYPE_10__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %170

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %118, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sle i32 %13, %18
  br i1 %19, label %20, label %121

20:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %21

21:                                               ; preds = %114, %20
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %24 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 %22, %28
  br i1 %29, label %30, label %117

30:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %110, %30
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %32, %42
  br i1 %43, label %44, label %113

44:                                               ; preds = %31
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %47 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = call i32 @mlx4_master_func_num(%struct.TYPE_10__* %48)
  %50 = icmp eq i32 %45, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51, %44
  %55 = load i32, i32* %5, align 4
  br label %68

56:                                               ; preds = %51
  %57 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %58 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %57, i32 0, i32 1
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  br label %68

68:                                               ; preds = %56, %54
  %69 = phi i32 [ %55, %54 ], [ %67, %56 ]
  %70 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %71 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32***, i32**** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32**, i32*** %73, i64 %75
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %77, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %69, i32* %85, align 4
  %86 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %87 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %93 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32***, i32**** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32**, i32*** %95, i64 %97
  %99 = load i32**, i32*** %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %99, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @mlx4_sync_pkey_table(%struct.TYPE_10__* %88, i32 %89, i32 %90, i32 %91, i32 %108)
  br label %110

110:                                              ; preds = %68
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %31

113:                                              ; preds = %31
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %3, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %3, align 4
  br label %21

117:                                              ; preds = %21
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %12

121:                                              ; preds = %12
  store i32 1, i32* %3, align 4
  br label %122

122:                                              ; preds = %166, %121
  %123 = load i32, i32* %3, align 4
  %124 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %125 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %124, i32 0, i32 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp sle i32 %123, %129
  br i1 %130, label %131, label %169

131:                                              ; preds = %122
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %162, %131
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %135 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %134, i32 0, i32 1
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %3, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %133, %143
  br i1 %144, label %145, label %165

145:                                              ; preds = %132
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 0, i32 65535
  %150 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %151 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i32**, i32*** %152, align 8
  %154 = load i32, i32* %3, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32*, i32** %153, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %149, i32* %161, align 4
  br label %162

162:                                              ; preds = %145
  %163 = load i32, i32* %5, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %5, align 4
  br label %132

165:                                              ; preds = %132
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %3, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %3, align 4
  br label %122

169:                                              ; preds = %122
  br label %170

170:                                              ; preds = %169, %1
  ret void
}

declare dso_local i64 @mlx4_is_master(%struct.TYPE_10__*) #1

declare dso_local i32 @mlx4_master_func_num(%struct.TYPE_10__*) #1

declare dso_local i32 @mlx4_sync_pkey_table(%struct.TYPE_10__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
