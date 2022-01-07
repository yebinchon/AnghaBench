; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agp_find_seg_in_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agp_find_seg_in_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_segment_priv = type { i64, i64, i32 }
%struct.agp_client = type { i32, %struct.agp_segment_priv** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.agp_segment_priv* (%struct.agp_client*, i64, i32, i32)* @agp_find_seg_in_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.agp_segment_priv* @agp_find_seg_in_client(%struct.agp_client* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.agp_segment_priv*, align 8
  %6 = alloca %struct.agp_client*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.agp_segment_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.agp_client* %0, %struct.agp_client** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i64, i64* %7, align 8
  %16 = udiv i64 %15, 4096
  store i64 %16, i64* %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sdiv i32 %17, 4096
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %14, align 8
  %20 = load %struct.agp_client*, %struct.agp_client** %6, align 8
  %21 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %20, i32 0, i32 1
  %22 = load %struct.agp_segment_priv**, %struct.agp_segment_priv*** %21, align 8
  %23 = load %struct.agp_segment_priv*, %struct.agp_segment_priv** %22, align 8
  store %struct.agp_segment_priv* %23, %struct.agp_segment_priv** %10, align 8
  %24 = load %struct.agp_client*, %struct.agp_client** %6, align 8
  %25 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %68, %4
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.agp_client*, %struct.agp_client** %6, align 8
  %30 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %27
  %34 = load %struct.agp_segment_priv*, %struct.agp_segment_priv** %10, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.agp_segment_priv, %struct.agp_segment_priv* %34, i64 %36
  %38 = getelementptr inbounds %struct.agp_segment_priv, %struct.agp_segment_priv* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %13, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %33
  %43 = load %struct.agp_segment_priv*, %struct.agp_segment_priv** %10, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.agp_segment_priv, %struct.agp_segment_priv* %43, i64 %45
  %47 = getelementptr inbounds %struct.agp_segment_priv, %struct.agp_segment_priv* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %14, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %42
  %52 = load %struct.agp_segment_priv*, %struct.agp_segment_priv** %10, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.agp_segment_priv, %struct.agp_segment_priv* %52, i64 %54
  %56 = getelementptr inbounds %struct.agp_segment_priv, %struct.agp_segment_priv* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @pgprot_val(i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @pgprot_val(i32 %59)
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load %struct.agp_segment_priv*, %struct.agp_segment_priv** %10, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.agp_segment_priv, %struct.agp_segment_priv* %63, i64 %65
  store %struct.agp_segment_priv* %66, %struct.agp_segment_priv** %5, align 8
  br label %72

67:                                               ; preds = %51, %42, %33
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %27

71:                                               ; preds = %27
  store %struct.agp_segment_priv* null, %struct.agp_segment_priv** %5, align 8
  br label %72

72:                                               ; preds = %71, %62
  %73 = load %struct.agp_segment_priv*, %struct.agp_segment_priv** %5, align 8
  ret %struct.agp_segment_priv* %73
}

declare dso_local i64 @pgprot_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
