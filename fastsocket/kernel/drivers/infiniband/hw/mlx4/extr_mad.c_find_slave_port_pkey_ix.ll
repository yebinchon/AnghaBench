; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_find_slave_port_pkey_ix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_find_slave_port_pkey_ix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32, %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64*** }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i64* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, i32, i64, i32, i32*)* @find_slave_port_pkey_ix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_slave_port_pkey_ix(%struct.mlx4_ib_dev* %0, i32 %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_ib_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i64 255, i64* %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %19, i32 0, i32 2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = call i32 @mlx4_master_func_num(%struct.TYPE_8__* %21)
  %23 = icmp eq i32 %18, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %26 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @ib_find_cached_pkey(i32* %26, i64 %27, i32 %28, i32* %29)
  store i32 %30, i32* %6, align 4
  br label %134

31:                                               ; preds = %5
  %32 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %33 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %32, i32 0, i32 2
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %40, 1
  store i64 %41, i64* %14, align 8
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %121, %31
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %45 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %43, %52
  br i1 %53, label %54, label %124

54:                                               ; preds = %42
  %55 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %56 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64***, i64**** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64**, i64*** %58, i64 %60
  %62 = load i64**, i64*** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = sub i64 %63, 1
  %65 = getelementptr inbounds i64*, i64** %62, i64 %64
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %14, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %54
  br label %121

74:                                               ; preds = %54
  %75 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %76 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64***, i64**** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64**, i64*** %78, i64 %80
  %82 = load i64**, i64*** %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = sub i64 %83, 1
  %85 = getelementptr inbounds i64*, i64** %82, i64 %84
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %15, align 8
  %91 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %92 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %91, i32 0, i32 0
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %15, align 8
  %95 = call i32 @ib_get_cached_pkey(i32* %92, i64 %93, i64 %94, i32* %17)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %74
  br label %121

99:                                               ; preds = %74
  %100 = load i32, i32* %17, align 4
  %101 = and i32 %100, 32767
  %102 = load i32, i32* %10, align 4
  %103 = and i32 %102, 32767
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %99
  %106 = load i32, i32* %17, align 4
  %107 = and i32 %106, 32768
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i64, i64* %15, align 8
  %111 = trunc i64 %110 to i32
  %112 = load i32*, i32** %11, align 8
  store i32 %111, i32* %112, align 4
  store i32 0, i32* %6, align 4
  br label %134

113:                                              ; preds = %105
  %114 = load i64, i64* %16, align 8
  %115 = icmp eq i64 %114, 255
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i64, i64* %15, align 8
  store i64 %117, i64* %16, align 8
  br label %118

118:                                              ; preds = %116, %113
  br label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %119, %99
  br label %121

121:                                              ; preds = %120, %98, %73
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %42

124:                                              ; preds = %42
  %125 = load i64, i64* %16, align 8
  %126 = icmp ult i64 %125, 255
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i64, i64* %16, align 8
  %129 = trunc i64 %128 to i32
  %130 = load i32*, i32** %11, align 8
  store i32 %129, i32* %130, align 4
  store i32 0, i32* %6, align 4
  br label %134

131:                                              ; preds = %124
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %131, %127, %109, %24
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @mlx4_master_func_num(%struct.TYPE_8__*) #1

declare dso_local i32 @ib_find_cached_pkey(i32*, i64, i32, i32*) #1

declare dso_local i32 @ib_get_cached_pkey(i32*, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
