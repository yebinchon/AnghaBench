; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_vmac.c_vhash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_vmac.c_vhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmac_ctx = type { i32*, i32*, i64, i32*, i64 }

@VMAC_NHBYTES = common dso_local global i32 0, align 4
@m62 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, %struct.vmac_ctx*)* @vhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhash(i8* %0, i32 %1, i32* %2, %struct.vmac_ctx* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vmac_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.vmac_ctx* %3, %struct.vmac_ctx** %8, align 8
  %19 = load %struct.vmac_ctx*, %struct.vmac_ctx** %8, align 8
  %20 = getelementptr inbounds %struct.vmac_ctx, %struct.vmac_ctx* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %12, align 8
  %23 = load %struct.vmac_ctx*, %struct.vmac_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.vmac_ctx, %struct.vmac_ctx* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %17, align 4
  %28 = load %struct.vmac_ctx*, %struct.vmac_ctx** %8, align 8
  %29 = getelementptr inbounds %struct.vmac_ctx, %struct.vmac_ctx* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %18, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %11, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @VMAC_NHBYTES, align 4
  %37 = udiv i32 %35, %36
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @VMAC_NHBYTES, align 4
  %40 = urem i32 %38, %39
  store i32 %40, i32* %14, align 4
  %41 = load %struct.vmac_ctx*, %struct.vmac_ctx** %8, align 8
  %42 = getelementptr inbounds %struct.vmac_ctx, %struct.vmac_ctx* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %4
  %46 = load %struct.vmac_ctx*, %struct.vmac_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.vmac_ctx, %struct.vmac_ctx* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %15, align 4
  %51 = load %struct.vmac_ctx*, %struct.vmac_ctx** %8, align 8
  %52 = getelementptr inbounds %struct.vmac_ctx, %struct.vmac_ctx* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %16, align 4
  br label %112

56:                                               ; preds = %4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %56
  %60 = load i32*, i32** %11, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* @VMAC_NHBYTES, align 4
  %63 = udiv i32 %62, 8
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @nh_vmac_nhbytes(i32* %60, i32* %61, i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* @m62, align 4
  %68 = load i32, i32* %15, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @ADD128(i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @VMAC_NHBYTES, align 4
  %76 = zext i32 %75 to i64
  %77 = udiv i64 %76, 4
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 %77
  store i32* %79, i32** %11, align 8
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %13, align 4
  br label %111

82:                                               ; preds = %56
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %82
  %86 = load i32*, i32** %11, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 15
  %90 = sdiv i32 %89, 16
  %91 = mul nsw i32 2, %90
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @nh_16(i32* %86, i32* %87, i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* @m62, align 4
  %96 = load i32, i32* %15, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %18, align 4
  %102 = call i32 @ADD128(i32 %98, i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* @VMAC_NHBYTES, align 4
  %104 = zext i32 %103 to i64
  %105 = udiv i64 %104, 4
  %106 = load i32*, i32** %11, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 %105
  store i32* %107, i32** %11, align 8
  br label %164

108:                                              ; preds = %82
  %109 = load i32, i32* %17, align 4
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %18, align 4
  store i32 %110, i32* %16, align 4
  br label %164

111:                                              ; preds = %59
  br label %112

112:                                              ; preds = %111, %45
  br label %113

113:                                              ; preds = %117, %112
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %13, align 4
  %116 = icmp ne i32 %114, 0
  br i1 %116, label %117, label %140

117:                                              ; preds = %113
  %118 = load i32*, i32** %11, align 8
  %119 = load i32*, i32** %12, align 8
  %120 = load i32, i32* @VMAC_NHBYTES, align 4
  %121 = udiv i32 %120, 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @nh_vmac_nhbytes(i32* %118, i32* %119, i32 %121, i32 %122, i32 %123)
  %125 = load i32, i32* @m62, align 4
  %126 = load i32, i32* %9, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @poly_step(i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133)
  %135 = load i32, i32* @VMAC_NHBYTES, align 4
  %136 = zext i32 %135 to i64
  %137 = udiv i64 %136, 4
  %138 = load i32*, i32** %11, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 %137
  store i32* %139, i32** %11, align 8
  br label %113

140:                                              ; preds = %113
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %163

143:                                              ; preds = %140
  %144 = load i32*, i32** %11, align 8
  %145 = load i32*, i32** %12, align 8
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, 15
  %148 = sdiv i32 %147, 16
  %149 = mul nsw i32 2, %148
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @nh_16(i32* %144, i32* %145, i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* @m62, align 4
  %154 = load i32, i32* %9, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @poly_step(i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %143, %140
  br label %164

164:                                              ; preds = %163, %108, %85
  %165 = load %struct.vmac_ctx*, %struct.vmac_ctx** %8, align 8
  %166 = call i32 @vhash_abort(%struct.vmac_ctx* %165)
  %167 = load i32, i32* %14, align 4
  %168 = mul nsw i32 %167, 8
  store i32 %168, i32* %14, align 4
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %16, align 4
  %171 = load %struct.vmac_ctx*, %struct.vmac_ctx** %8, align 8
  %172 = getelementptr inbounds %struct.vmac_ctx, %struct.vmac_ctx* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.vmac_ctx*, %struct.vmac_ctx** %8, align 8
  %177 = getelementptr inbounds %struct.vmac_ctx, %struct.vmac_ctx* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @l3hash(i32 %169, i32 %170, i32 %175, i32 %180, i32 %181)
  ret i32 %182
}

declare dso_local i32 @nh_vmac_nhbytes(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @ADD128(i32, i32, i32, i32) #1

declare dso_local i32 @nh_16(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @poly_step(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vhash_abort(%struct.vmac_ctx*) #1

declare dso_local i32 @l3hash(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
