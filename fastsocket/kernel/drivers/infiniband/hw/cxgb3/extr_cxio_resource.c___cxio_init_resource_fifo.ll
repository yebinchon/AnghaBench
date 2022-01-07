; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_cxio_resource.c___cxio_init_resource_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_cxio_resource.c___cxio_init_resource_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfifo = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RANDOM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kfifo**, i32*, i32, i32, i32, i32)* @__cxio_init_resource_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cxio_init_resource_fifo(%struct.kfifo** %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kfifo**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [16 x i32], align 16
  store %struct.kfifo** %0, %struct.kfifo*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = call %struct.kfifo* @kfifo_alloc(i32 %25, i32 %26, i32* %27)
  %29 = load %struct.kfifo**, %struct.kfifo*** %8, align 8
  store %struct.kfifo* %28, %struct.kfifo** %29, align 8
  %30 = load %struct.kfifo**, %struct.kfifo*** %8, align 8
  %31 = load %struct.kfifo*, %struct.kfifo** %30, align 8
  %32 = call i64 @IS_ERR(%struct.kfifo* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %6
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %159

37:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %49, %37
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %40, %41
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.kfifo**, %struct.kfifo*** %8, align 8
  %46 = load %struct.kfifo*, %struct.kfifo** %45, align 8
  %47 = bitcast i32* %16 to i8*
  %48 = call i32 @__kfifo_put(%struct.kfifo* %46, i8* %47, i32 4)
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  br label %38

52:                                               ; preds = %38
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %126

55:                                               ; preds = %52
  store i32 0, i32* %15, align 4
  %56 = call i32 (...) @random32()
  store i32 %56, i32* %18, align 4
  store i32 0, i32* %14, align 4
  br label %57

57:                                               ; preds = %68, %55
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @RANDOM_SIZE, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 %66
  store i32 %64, i32* %67, align 4
  br label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %14, align 4
  br label %57

71:                                               ; preds = %57
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @RANDOM_SIZE, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %106, %71
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %12, align 4
  %79 = sub nsw i32 %77, %78
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %109

81:                                               ; preds = %75
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @RANDOM_SIZE, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  store i32 0, i32* %15, align 4
  %86 = call i32 (...) @random32()
  store i32 %86, i32* %18, align 4
  br label %87

87:                                               ; preds = %85, %81
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %15, align 4
  %90 = mul nsw i32 %89, 2
  %91 = ashr i32 %88, %90
  %92 = and i32 %91, 15
  store i32 %92, i32* %17, align 4
  %93 = load %struct.kfifo**, %struct.kfifo*** %8, align 8
  %94 = load %struct.kfifo*, %struct.kfifo** %93, align 8
  %95 = load i32, i32* %17, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 %96
  %98 = bitcast i32* %97 to i8*
  %99 = call i32 @__kfifo_put(%struct.kfifo* %94, i8* %98, i32 4)
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 %102
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %15, align 4
  br label %106

106:                                              ; preds = %87
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %75

109:                                              ; preds = %75
  store i32 0, i32* %14, align 4
  br label %110

110:                                              ; preds = %122, %109
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* @RANDOM_SIZE, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %110
  %115 = load %struct.kfifo**, %struct.kfifo*** %8, align 8
  %116 = load %struct.kfifo*, %struct.kfifo** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 %118
  %120 = bitcast i32* %119 to i8*
  %121 = call i32 @__kfifo_put(%struct.kfifo* %116, i8* %120, i32 4)
  br label %122

122:                                              ; preds = %114
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %14, align 4
  br label %110

125:                                              ; preds = %110
  br label %143

126:                                              ; preds = %52
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %14, align 4
  br label %128

128:                                              ; preds = %139, %126
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %12, align 4
  %132 = sub nsw i32 %130, %131
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %128
  %135 = load %struct.kfifo**, %struct.kfifo*** %8, align 8
  %136 = load %struct.kfifo*, %struct.kfifo** %135, align 8
  %137 = bitcast i32* %14 to i8*
  %138 = call i32 @__kfifo_put(%struct.kfifo* %136, i8* %137, i32 4)
  br label %139

139:                                              ; preds = %134
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %14, align 4
  br label %128

142:                                              ; preds = %128
  br label %143

143:                                              ; preds = %142, %125
  store i32 0, i32* %14, align 4
  br label %144

144:                                              ; preds = %155, %143
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %146, %147
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %144
  %151 = load %struct.kfifo**, %struct.kfifo*** %8, align 8
  %152 = load %struct.kfifo*, %struct.kfifo** %151, align 8
  %153 = bitcast i32* %16 to i8*
  %154 = call i32 @kfifo_get(%struct.kfifo* %152, i8* %153, i32 4)
  br label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %14, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %14, align 4
  br label %144

158:                                              ; preds = %144
  store i32 0, i32* %7, align 4
  br label %159

159:                                              ; preds = %158, %34
  %160 = load i32, i32* %7, align 4
  ret i32 %160
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.kfifo* @kfifo_alloc(i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.kfifo*) #1

declare dso_local i32 @__kfifo_put(%struct.kfifo*, i8*, i32) #1

declare dso_local i32 @random32(...) #1

declare dso_local i32 @kfifo_get(%struct.kfifo*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
