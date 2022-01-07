; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_amba-pl022.c_set_up_next_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_amba-pl022.c_set_up_next_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl022 = type { %struct.TYPE_6__*, i8*, i32, i8*, i32, %struct.TYPE_5__*, i8*, i8*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.spi_transfer = type { i64, i64 }

@.str = private unnamed_addr constant [88 x i8] c"message of %u bytes to transmit but the current chip bus has a data width of %u bytes!\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"skipping this message\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@WRITING_NULL = common dso_local global i32 0, align 4
@READING_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl022*, %struct.spi_transfer*)* @set_up_next_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_up_next_transfer(%struct.pl022* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pl022*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca i32, align 4
  store %struct.pl022* %0, %struct.pl022** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %7 = load %struct.pl022*, %struct.pl022** %4, align 8
  %8 = getelementptr inbounds %struct.pl022, %struct.pl022* %7, i32 0, i32 5
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pl022*, %struct.pl022** %4, align 8
  %13 = getelementptr inbounds %struct.pl022, %struct.pl022* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = srem i32 %11, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %2
  %24 = load %struct.pl022*, %struct.pl022** %4, align 8
  %25 = getelementptr inbounds %struct.pl022, %struct.pl022* %24, i32 0, i32 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.pl022*, %struct.pl022** %4, align 8
  %29 = getelementptr inbounds %struct.pl022, %struct.pl022* %28, i32 0, i32 5
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pl022*, %struct.pl022** %4, align 8
  %34 = getelementptr inbounds %struct.pl022, %struct.pl022* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32*, i8*, ...) @dev_err(i32* %27, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %37)
  %39 = load %struct.pl022*, %struct.pl022** %4, align 8
  %40 = getelementptr inbounds %struct.pl022, %struct.pl022* %39, i32 0, i32 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 (i32*, i8*, ...) @dev_err(i32* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %115

46:                                               ; preds = %2
  %47 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %48 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.pl022*, %struct.pl022** %4, align 8
  %52 = getelementptr inbounds %struct.pl022, %struct.pl022* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load %struct.pl022*, %struct.pl022** %4, align 8
  %54 = getelementptr inbounds %struct.pl022, %struct.pl022* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.pl022*, %struct.pl022** %4, align 8
  %57 = getelementptr inbounds %struct.pl022, %struct.pl022* %56, i32 0, i32 5
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr i8, i8* %55, i64 %61
  %63 = load %struct.pl022*, %struct.pl022** %4, align 8
  %64 = getelementptr inbounds %struct.pl022, %struct.pl022* %63, i32 0, i32 7
  store i8* %62, i8** %64, align 8
  %65 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %66 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.pl022*, %struct.pl022** %4, align 8
  %70 = getelementptr inbounds %struct.pl022, %struct.pl022* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.pl022*, %struct.pl022** %4, align 8
  %72 = getelementptr inbounds %struct.pl022, %struct.pl022* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.pl022*, %struct.pl022** %4, align 8
  %75 = getelementptr inbounds %struct.pl022, %struct.pl022* %74, i32 0, i32 5
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr i8, i8* %73, i64 %79
  %81 = load %struct.pl022*, %struct.pl022** %4, align 8
  %82 = getelementptr inbounds %struct.pl022, %struct.pl022* %81, i32 0, i32 6
  store i8* %80, i8** %82, align 8
  %83 = load %struct.pl022*, %struct.pl022** %4, align 8
  %84 = getelementptr inbounds %struct.pl022, %struct.pl022* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %46
  %88 = load %struct.pl022*, %struct.pl022** %4, align 8
  %89 = getelementptr inbounds %struct.pl022, %struct.pl022* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  br label %95

93:                                               ; preds = %46
  %94 = load i32, i32* @WRITING_NULL, align 4
  br label %95

95:                                               ; preds = %93, %87
  %96 = phi i32 [ %92, %87 ], [ %94, %93 ]
  %97 = load %struct.pl022*, %struct.pl022** %4, align 8
  %98 = getelementptr inbounds %struct.pl022, %struct.pl022* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load %struct.pl022*, %struct.pl022** %4, align 8
  %100 = getelementptr inbounds %struct.pl022, %struct.pl022* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %95
  %104 = load %struct.pl022*, %struct.pl022** %4, align 8
  %105 = getelementptr inbounds %struct.pl022, %struct.pl022* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  br label %111

109:                                              ; preds = %95
  %110 = load i32, i32* @READING_NULL, align 4
  br label %111

111:                                              ; preds = %109, %103
  %112 = phi i32 [ %108, %103 ], [ %110, %109 ]
  %113 = load %struct.pl022*, %struct.pl022** %4, align 8
  %114 = getelementptr inbounds %struct.pl022, %struct.pl022* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %111, %23
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
