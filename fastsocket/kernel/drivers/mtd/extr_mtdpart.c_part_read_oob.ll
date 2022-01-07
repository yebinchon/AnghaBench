; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdpart.c_part_read_oob.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdpart.c_part_read_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mtd_oob_ops = type { i64, i64 }
%struct.mtd_part = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i64, %struct.mtd_oob_ops*)* }

@EINVAL = common dso_local global i32 0, align 4
@EUCLEAN = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)* @part_read_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @part_read_oob(%struct.mtd_info* %0, i64 %1, %struct.mtd_oob_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mtd_oob_ops*, align 8
  %8 = alloca %struct.mtd_part*, align 8
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.mtd_oob_ops* %2, %struct.mtd_oob_ops** %7, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %11 = call %struct.mtd_part* @PART(%struct.mtd_info* %10)
  store %struct.mtd_part* %11, %struct.mtd_part** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %82

20:                                               ; preds = %3
  %21 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %22 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %28 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %32 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %82

38:                                               ; preds = %25, %20
  %39 = load %struct.mtd_part*, %struct.mtd_part** %8, align 8
  %40 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_4__*, i64, %struct.mtd_oob_ops*)*, i32 (%struct.TYPE_4__*, i64, %struct.mtd_oob_ops*)** %42, align 8
  %44 = load %struct.mtd_part*, %struct.mtd_part** %8, align 8
  %45 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.mtd_part*, %struct.mtd_part** %8, align 8
  %49 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %53 = call i32 %43(%struct.TYPE_4__* %46, i64 %51, %struct.mtd_oob_ops* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %38
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @EUCLEAN, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %64 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %57
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @EBADMSG, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %75 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %68
  br label %80

80:                                               ; preds = %79, %38
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %35, %17
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.mtd_part* @PART(%struct.mtd_info*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
