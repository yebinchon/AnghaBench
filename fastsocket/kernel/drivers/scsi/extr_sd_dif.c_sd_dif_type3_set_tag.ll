; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd_dif.c_sd_dif_type3_set_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd_dif.c_sd_dif_type3_set_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd_dif_tuple = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @sd_dif_type3_set_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_dif_type3_set_tag(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd_dif_tuple*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.sd_dif_tuple*
  store %struct.sd_dif_tuple* %12, %struct.sd_dif_tuple** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %67, %3
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %74

19:                                               ; preds = %15
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %10, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = add i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %25, %31
  %33 = load %struct.sd_dif_tuple*, %struct.sd_dif_tuple** %7, align 8
  %34 = getelementptr inbounds %struct.sd_dif_tuple, %struct.sd_dif_tuple* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = add i32 %36, 2
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 24
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = add i32 %43, 3
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 16
  %49 = or i32 %41, %48
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = add i32 %51, 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = or i32 %49, %56
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = add i32 %59, 5
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %57, %63
  %65 = load %struct.sd_dif_tuple*, %struct.sd_dif_tuple** %7, align 8
  %66 = getelementptr inbounds %struct.sd_dif_tuple, %struct.sd_dif_tuple* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %19
  %68 = load i32, i32* %9, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add i32 %70, 6
  store i32 %71, i32* %10, align 4
  %72 = load %struct.sd_dif_tuple*, %struct.sd_dif_tuple** %7, align 8
  %73 = getelementptr inbounds %struct.sd_dif_tuple, %struct.sd_dif_tuple* %72, i32 1
  store %struct.sd_dif_tuple* %73, %struct.sd_dif_tuple** %7, align 8
  br label %15

74:                                               ; preds = %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
