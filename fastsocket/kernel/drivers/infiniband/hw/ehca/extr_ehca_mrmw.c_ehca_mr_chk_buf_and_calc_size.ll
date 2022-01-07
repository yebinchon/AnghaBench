; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_mr_chk_buf_and_calc_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_mr_chk_buf_and_calc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_phys_buf = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"bad phys buf array len, num_phys_buf=0\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"iova_start/addr mismatch, iova_start=%p pbuf->addr=%llx pbuf->size=%llx\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"addr/size mismatch in 1st buf, pbuf->addr=%llx pbuf->size=%llx\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"bad address, i=%x pbuf->addr=%llx pbuf->size=%llx\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"bad size, i=%x pbuf->size=%llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehca_mr_chk_buf_and_calc_size(%struct.ib_phys_buf* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_phys_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ib_phys_buf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ib_phys_buf* %0, %struct.ib_phys_buf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %6, align 8
  store %struct.ib_phys_buf* %13, %struct.ib_phys_buf** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = call i32 (i8*, ...) @ehca_gen_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %136

20:                                               ; preds = %4
  %21 = load i32*, i32** %8, align 8
  %22 = ptrtoint i32* %21 to i32
  %23 = load i32, i32* @PAGE_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %10, align 8
  %27 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PAGE_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %25, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %20
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %10, align 8
  %36 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %10, align 8
  %39 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @ehca_gen_err(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32* %34, i32 %37, i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %136

44:                                               ; preds = %20
  %45 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %10, align 8
  %46 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %10, align 8
  %49 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = srem i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %44
  %56 = load i32, i32* %7, align 4
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %10, align 8
  %60 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %10, align 8
  %63 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @ehca_gen_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %136

68:                                               ; preds = %55, %44
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %130, %68
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %133

73:                                               ; preds = %69
  %74 = load i32, i32* %12, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %73
  %77 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %10, align 8
  %78 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PAGE_SIZE, align 4
  %81 = srem i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %76
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %10, align 8
  %86 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %10, align 8
  %89 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, ...) @ehca_gen_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %84, i32 %87, i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %136

94:                                               ; preds = %76, %73
  %95 = load i32, i32* %12, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %99, 1
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %10, align 8
  %104 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @PAGE_SIZE, align 4
  %107 = srem i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %102, %97, %94
  %110 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %10, align 8
  %111 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %109, %102
  %115 = load i32, i32* %12, align 4
  %116 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %10, align 8
  %117 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i8*, ...) @ehca_gen_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %115, i32 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %5, align 4
  br label %136

122:                                              ; preds = %109
  %123 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %10, align 8
  %124 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %11, align 4
  %128 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %10, align 8
  %129 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %128, i32 1
  store %struct.ib_phys_buf* %129, %struct.ib_phys_buf** %10, align 8
  br label %130

130:                                              ; preds = %122
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %69

133:                                              ; preds = %69
  %134 = load i32, i32* %11, align 4
  %135 = load i32*, i32** %9, align 8
  store i32 %134, i32* %135, align 4
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %133, %114, %83, %58, %33, %16
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @ehca_gen_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
