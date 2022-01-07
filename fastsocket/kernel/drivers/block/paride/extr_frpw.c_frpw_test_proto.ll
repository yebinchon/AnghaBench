; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_frpw.c_frpw_test_proto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_frpw.c_frpw_test_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"%s: frpw: Xilinx does not support mode %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: frpw: ASIC does not support mode 2\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"%s: frpw: port 0x%x, chip %ld, mode %d, test=(%d,%d,%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32)* @frpw_test_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frpw_test_proto(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = bitcast [2 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = call i32 @frpw_test_pnp(%struct.TYPE_9__* %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 2, %26
  %28 = add nsw i32 %23, %27
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %21, %3
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = srem i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %31
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 2
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %45, %42
  store i32 1, i32* %4, align 4
  br label %185

54:                                               ; preds = %37, %31
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = srem i32 %57, 2
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %68, %65
  store i32 1, i32* %4, align 4
  br label %185

74:                                               ; preds = %60, %54
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = call i32 @frpw_connect(%struct.TYPE_9__* %75)
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %114, %74
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %80, label %117

80:                                               ; preds = %77
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = mul nsw i32 %82, 16
  %84 = add nsw i32 160, %83
  %85 = call i32 @frpw_write_regr(%struct.TYPE_9__* %81, i32 0, i32 6, i32 %84)
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %110, %80
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 256
  br i1 %88, label %89, label %113

89:                                               ; preds = %86
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = load i32, i32* %9, align 4
  %92 = xor i32 %91, 170
  %93 = call i32 @frpw_write_regr(%struct.TYPE_9__* %90, i32 0, i32 2, i32 %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = xor i32 %95, 85
  %97 = call i32 @frpw_write_regr(%struct.TYPE_9__* %94, i32 0, i32 3, i32 %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = call i32 @frpw_read_regr(%struct.TYPE_9__* %98, i32 0, i32 2)
  %100 = load i32, i32* %9, align 4
  %101 = xor i32 %100, 170
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %89
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %89
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %86

113:                                              ; preds = %86
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %77

117:                                              ; preds = %77
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %119 = call i32 @frpw_disconnect(%struct.TYPE_9__* %118)
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %121 = call i32 @frpw_connect(%struct.TYPE_9__* %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = call i32 @frpw_read_block_int(%struct.TYPE_9__* %122, i8* %123, i32 512, i32 16)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %125

125:                                              ; preds = %141, %117
  %126 = load i32, i32* %9, align 4
  %127 = icmp slt i32 %126, 128
  br i1 %127, label %128, label %144

128:                                              ; preds = %125
  %129 = load i8*, i8** %6, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %128
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %137, %128
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %125

144:                                              ; preds = %125
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %146 = call i32 @frpw_disconnect(%struct.TYPE_9__* %145)
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %169

149:                                              ; preds = %144
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = srem i32 %158, 2
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %10, align 4
  %168 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %152, i32 %155, i32 %159, i32 %162, i32 %164, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %149, %144
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %182, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br label %180

180:                                              ; preds = %176, %172
  %181 = phi i1 [ false, %172 ], [ %179, %176 ]
  br label %182

182:                                              ; preds = %180, %169
  %183 = phi i1 [ true, %169 ], [ %181, %180 ]
  %184 = zext i1 %183 to i32
  store i32 %184, i32* %4, align 4
  br label %185

185:                                              ; preds = %182, %73, %53
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @frpw_test_pnp(%struct.TYPE_9__*) #2

declare dso_local i32 @printk(i8*, i32, ...) #2

declare dso_local i32 @frpw_connect(%struct.TYPE_9__*) #2

declare dso_local i32 @frpw_write_regr(%struct.TYPE_9__*, i32, i32, i32) #2

declare dso_local i32 @frpw_read_regr(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @frpw_disconnect(%struct.TYPE_9__*) #2

declare dso_local i32 @frpw_read_block_int(%struct.TYPE_9__*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
