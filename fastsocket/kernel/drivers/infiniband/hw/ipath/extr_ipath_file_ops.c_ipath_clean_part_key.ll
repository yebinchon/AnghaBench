; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_clean_part_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_clean_part_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.ipath_portdata = type { i32*, i32 }
%struct.ipath_devdata = type { i32*, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32 }

@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"look for key[%d] %hx in pkeys\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"p%u clear key %x matches #%d\0A\00", align 1
@ipath_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"p%u key %x matches #%d, but ref still %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"p%u old pkey reg %llx, new pkey reg %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_portdata*, %struct.ipath_devdata*)* @ipath_clean_part_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipath_clean_part_key(%struct.ipath_portdata* %0, %struct.ipath_devdata* %1) #0 {
  %3 = alloca %struct.ipath_portdata*, align 8
  %4 = alloca %struct.ipath_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ipath_portdata* %0, %struct.ipath_portdata** %3, align 8
  store %struct.ipath_devdata* %1, %struct.ipath_devdata** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %11 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %16 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 16
  %21 = or i32 %14, %20
  %22 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %23 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 32
  %28 = or i32 %21, %27
  %29 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %30 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 48
  %35 = or i32 %28, %34
  store i32 %35, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %160, %2
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %39 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @ARRAY_SIZE(i32* %40)
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %163

43:                                               ; preds = %36
  %44 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %45 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %160

53:                                               ; preds = %43
  %54 = load i32, i32* @VERBOSE, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %57 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = call i32 (i32, i8*, i32, i64, ...) @ipath_cdbg(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %55, i64 %63)
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %150, %53
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %68 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @ARRAY_SIZE(i32* %69)
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %153

72:                                               ; preds = %65
  %73 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %74 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 32767
  %81 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %82 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 32767
  %89 = icmp ne i32 %80, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %72
  br label %150

91:                                               ; preds = %72
  %92 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %93 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = call i64 @atomic_dec_and_test(i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %127

100:                                              ; preds = %91
  %101 = load i32, i32* @VERBOSE, align 4
  %102 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %103 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %106 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = load i32, i32* %6, align 4
  %114 = call i32 (i32, i8*, i32, i64, ...) @ipath_cdbg(i32 %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %104, i64 %112, i32 %113)
  %115 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %116 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 0, i32* %120, align 4
  %121 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ipath_stats, i32 0, i32 0), align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 0, i32* %124, align 4
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %149

127:                                              ; preds = %91
  %128 = load i32, i32* @VERBOSE, align 4
  %129 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %130 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %133 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = load i32, i32* %6, align 4
  %141 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %142 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = call i32 @atomic_read(i32* %146)
  %148 = call i32 (i32, i8*, i32, i64, ...) @ipath_cdbg(i32 %128, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %131, i64 %139, i32 %140, i32 %147)
  br label %149

149:                                              ; preds = %127, %100
  br label %153

150:                                              ; preds = %90
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %65

153:                                              ; preds = %149, %65
  %154 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %155 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 0, i32* %159, align 4
  br label %160

160:                                              ; preds = %153, %52
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %5, align 4
  br label %36

163:                                              ; preds = %36
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %210

166:                                              ; preds = %163
  %167 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %168 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %173 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = shl i32 %176, 16
  %178 = or i32 %171, %177
  %179 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %180 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  %183 = load i32, i32* %182, align 4
  %184 = shl i32 %183, 32
  %185 = or i32 %178, %184
  %186 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %187 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 3
  %190 = load i32, i32* %189, align 4
  %191 = shl i32 %190, 48
  %192 = or i32 %185, %191
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* @VERBOSE, align 4
  %194 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %195 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = call i32 (i32, i8*, i32, i64, ...) @ipath_cdbg(i32 %193, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %196, i64 %198, i64 %200)
  %202 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %203 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %204 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %203, i32 0, i32 1
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %202, i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %166, %163
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i32, i64, ...) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
