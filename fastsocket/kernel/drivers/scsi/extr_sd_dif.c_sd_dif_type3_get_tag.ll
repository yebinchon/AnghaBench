; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd_dif.c_sd_dif_type3_get_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd_dif.c_sd_dif_type3_get_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd_dif_tuple = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @sd_dif_type3_get_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_dif_type3_get_tag(i8* %0, i8* %1, i32 %2) #0 {
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

15:                                               ; preds = %90, %3
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %97

19:                                               ; preds = %15
  %20 = load %struct.sd_dif_tuple*, %struct.sd_dif_tuple** %7, align 8
  %21 = getelementptr inbounds %struct.sd_dif_tuple, %struct.sd_dif_tuple* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 65280
  %24 = ashr i32 %23, 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  %29 = load %struct.sd_dif_tuple*, %struct.sd_dif_tuple** %7, align 8
  %30 = getelementptr inbounds %struct.sd_dif_tuple, %struct.sd_dif_tuple* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 255
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = add i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  store i32 %32, i32* %37, align 4
  %38 = load %struct.sd_dif_tuple*, %struct.sd_dif_tuple** %7, align 8
  %39 = getelementptr inbounds %struct.sd_dif_tuple, %struct.sd_dif_tuple* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, -16777216
  %42 = lshr i32 %41, 24
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = add i32 %44, 2
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %42, i32* %47, align 4
  %48 = load %struct.sd_dif_tuple*, %struct.sd_dif_tuple** %7, align 8
  %49 = getelementptr inbounds %struct.sd_dif_tuple, %struct.sd_dif_tuple* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 16711680
  %52 = ashr i32 %51, 16
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %10, align 4
  %55 = add i32 %54, 3
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32 %52, i32* %57, align 4
  %58 = load %struct.sd_dif_tuple*, %struct.sd_dif_tuple** %7, align 8
  %59 = getelementptr inbounds %struct.sd_dif_tuple, %struct.sd_dif_tuple* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 65280
  %62 = ashr i32 %61, 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = add i32 %64, 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 %62, i32* %67, align 4
  %68 = load %struct.sd_dif_tuple*, %struct.sd_dif_tuple** %7, align 8
  %69 = getelementptr inbounds %struct.sd_dif_tuple, %struct.sd_dif_tuple* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 255
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %10, align 4
  %74 = add i32 %73, 5
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  store i32 %71, i32* %76, align 4
  %77 = load %struct.sd_dif_tuple*, %struct.sd_dif_tuple** %7, align 8
  %78 = getelementptr inbounds %struct.sd_dif_tuple, %struct.sd_dif_tuple* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 65535
  br i1 %80, label %86, label %81

81:                                               ; preds = %19
  %82 = load %struct.sd_dif_tuple*, %struct.sd_dif_tuple** %7, align 8
  %83 = getelementptr inbounds %struct.sd_dif_tuple, %struct.sd_dif_tuple* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, -1
  br label %86

86:                                               ; preds = %81, %19
  %87 = phi i1 [ true, %19 ], [ %85, %81 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @BUG_ON(i32 %88)
  br label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %9, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add i32 %93, 2
  store i32 %94, i32* %10, align 4
  %95 = load %struct.sd_dif_tuple*, %struct.sd_dif_tuple** %7, align 8
  %96 = getelementptr inbounds %struct.sd_dif_tuple, %struct.sd_dif_tuple* %95, i32 1
  store %struct.sd_dif_tuple* %96, %struct.sd_dif_tuple** %7, align 8
  br label %15

97:                                               ; preds = %15
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
