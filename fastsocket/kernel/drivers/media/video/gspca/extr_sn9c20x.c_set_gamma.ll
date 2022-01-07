; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_set_gamma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_set_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @set_gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_gamma(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca [17 x i32], align 16
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %3, align 8
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %10, 184
  %12 = sdiv i32 %11, 256
  store i32 %12, i32* %5, align 4
  %13 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 0
  store i32 10, i32* %13, align 16
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 %14, 184
  %16 = sdiv i32 %15, 184
  %17 = add nsw i32 19, %16
  %18 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 %19, 201
  %21 = sdiv i32 %20, 184
  %22 = add nsw i32 37, %21
  %23 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 2
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %24, 195
  %26 = sdiv i32 %25, 184
  %27 = add nsw i32 55, %26
  %28 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 3
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %29, 183
  %31 = sdiv i32 %30, 184
  %32 = add nsw i32 69, %31
  %33 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 4
  store i32 %32, i32* %33, align 16
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %34, 166
  %36 = sdiv i32 %35, 184
  %37 = add nsw i32 85, %36
  %38 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 5
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 %39, 151
  %41 = sdiv i32 %40, 184
  %42 = add nsw i32 101, %41
  %43 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 6
  store i32 %42, i32* %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = mul nsw i32 %44, 137
  %46 = sdiv i32 %45, 184
  %47 = add nsw i32 116, %46
  %48 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 7
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %5, align 4
  %50 = mul nsw i32 %49, 123
  %51 = sdiv i32 %50, 184
  %52 = add nsw i32 131, %51
  %53 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 8
  store i32 %52, i32* %53, align 16
  %54 = load i32, i32* %5, align 4
  %55 = mul nsw i32 %54, 106
  %56 = sdiv i32 %55, 184
  %57 = add nsw i32 146, %56
  %58 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 9
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %5, align 4
  %60 = mul nsw i32 %59, 91
  %61 = sdiv i32 %60, 184
  %62 = add nsw i32 161, %61
  %63 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 10
  store i32 %62, i32* %63, align 8
  %64 = load i32, i32* %5, align 4
  %65 = mul nsw i32 %64, 76
  %66 = sdiv i32 %65, 184
  %67 = add nsw i32 176, %66
  %68 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 11
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %5, align 4
  %70 = mul nsw i32 %69, 60
  %71 = sdiv i32 %70, 184
  %72 = add nsw i32 191, %71
  %73 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 12
  store i32 %72, i32* %73, align 16
  %74 = load i32, i32* %5, align 4
  %75 = mul nsw i32 %74, 45
  %76 = sdiv i32 %75, 184
  %77 = add nsw i32 206, %76
  %78 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 13
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  %80 = mul nsw i32 %79, 30
  %81 = sdiv i32 %80, 184
  %82 = add nsw i32 223, %81
  %83 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 14
  store i32 %82, i32* %83, align 8
  %84 = load i32, i32* %5, align 4
  %85 = mul nsw i32 %84, 15
  %86 = sdiv i32 %85, 184
  %87 = add nsw i32 234, %86
  %88 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 15
  store i32 %87, i32* %88, align 4
  %89 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 16
  store i32 245, i32* %89, align 16
  %90 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %91 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 0
  %92 = call i32 @reg_w(%struct.gspca_dev* %90, i32 4496, i32* %91, i32 17)
  ret i32 %92
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
