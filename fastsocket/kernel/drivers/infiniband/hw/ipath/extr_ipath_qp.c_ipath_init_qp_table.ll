; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_init_qp_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_init_qp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_ibdev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BITS_PER_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_init_qp_table(%struct.ipath_ibdev* %0, i32 %1) #0 {
  %3 = alloca %struct.ipath_ibdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ipath_ibdev* %0, %struct.ipath_ibdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %8 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %12 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 4
  %14 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %15 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @kzalloc(i32 %20, i32 %21)
  %23 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %24 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  store i32* %22, i32** %25, align 8
  %26 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %27 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %66

34:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %62, %34
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %38 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %40)
  %42 = icmp slt i32 %36, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %35
  %44 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %45 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* @BITS_PER_PAGE, align 4
  %53 = call i32 @atomic_set(i32* %51, i32 %52)
  %54 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %55 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %43
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %35

65:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %31
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
