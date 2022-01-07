; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_setup_free_cid_que.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_setup_free_cid_que.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i32, i32**, i64, i64, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2i_hba*)* @bnx2i_setup_free_cid_que to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2i_setup_free_cid_que(%struct.bnx2i_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2i_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2i_hba* %0, %struct.bnx2i_hba** %3, align 8
  %6 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %7 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = sub nsw i32 %13, 1
  %15 = add nsw i32 %12, %14
  %16 = load i32, i32* @PAGE_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kmalloc(i32 %18, i32 %19)
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %23 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 6
  store i32* %21, i32** %24, align 8
  %25 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %26 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %121

33:                                               ; preds = %1
  %34 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %35 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = sub nsw i32 %41, 1
  %43 = add nsw i32 %40, %42
  %44 = load i32, i32* @PAGE_MASK, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kmalloc(i32 %46, i32 %47)
  %49 = bitcast i8* %48 to i32**
  %50 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %51 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  store i32** %49, i32*** %52, align 8
  %53 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %54 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32**, i32*** %55, align 8
  %57 = icmp ne i32** %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %33
  %59 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %60 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 6
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @kfree(i32* %62)
  %64 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %65 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 6
  store i32* null, i32** %66, align 8
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %121

69:                                               ; preds = %33
  %70 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %71 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 6
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %75 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32* %73, i32** %76, align 8
  %77 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %78 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 5
  store i64 0, i64* %79, align 8
  %80 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %81 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  store i64 0, i64* %82, align 8
  %83 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %84 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %87 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 8
  %89 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %90 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %93 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 4
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %117, %69
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %98 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %95
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %104 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %102, i32* %109, align 4
  %110 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %111 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  store i32* null, i32** %116, align 8
  br label %117

117:                                              ; preds = %101
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %95

120:                                              ; preds = %95
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %58, %30
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
