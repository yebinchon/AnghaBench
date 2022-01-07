; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_spi.c_spi_display_xfer_agreement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_spi.c_spi_display_xfer_agreement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i32, i32 }
%struct.spi_transport_attrs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"FAST-?\00", align 1
@SPI_STATIC_PPR = common dso_local global i64 0, align 8
@ppr_to_ps = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"FAST-320\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"FAST-160\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"FAST-80\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"FAST-40\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"FAST-20\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"FAST-10\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"FAST-5\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"%s %sSCSI %d.%d MB/s %s%s%s%s%s%s%s%s (%s ns, offset %d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"WIDE \00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"DT\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"ST\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" IU\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" QAS\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c" RDSTRM\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" RTI\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c" WRFLOW\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c" PCOMP\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c" HMCS\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"%sasynchronous\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"wide \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_display_xfer_agreement(%struct.scsi_target* %0) #0 {
  %2 = alloca %struct.scsi_target*, align 8
  %3 = alloca %struct.spi_transport_attrs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [8 x i8], align 1
  store %struct.scsi_target* %0, %struct.scsi_target** %2, align 8
  %8 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %8, i32 0, i32 1
  %10 = bitcast i32* %9 to %struct.spi_transport_attrs*
  store %struct.spi_transport_attrs* %10, %struct.spi_transport_attrs** %3, align 8
  %11 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %3, align 8
  %12 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %145

15:                                               ; preds = %1
  %16 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %3, align 8
  %17 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %145

20:                                               ; preds = %15
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %21 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %3, align 8
  %22 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SPI_STATIC_PPR, align 8
  %25 = icmp ule i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load i32*, i32** @ppr_to_ps, align 8
  %28 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %3, align 8
  %29 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  %33 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %3, align 8
  %34 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  switch i64 %35, label %41 [
    i64 7, label %36
    i64 8, label %37
    i64 9, label %38
    i64 10, label %39
    i64 11, label %39
    i64 12, label %40
  ]

36:                                               ; preds = %26
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %41

37:                                               ; preds = %26
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %41

38:                                               ; preds = %26
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %41

39:                                               ; preds = %26, %26
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %41

40:                                               ; preds = %26
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %41

41:                                               ; preds = %26, %40, %39, %38, %37, %36
  br label %62

42:                                               ; preds = %20
  %43 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %3, align 8
  %44 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = mul i64 %45, 4000
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  %48 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %3, align 8
  %49 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %50, 25
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %61

53:                                               ; preds = %42
  %54 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %3, align 8
  %55 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %56, 50
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %60

59:                                               ; preds = %53
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %60

60:                                               ; preds = %59, %58
  br label %61

61:                                               ; preds = %60, %52
  br label %62

62:                                               ; preds = %61, %41
  %63 = load i32, i32* %4, align 4
  %64 = udiv i32 %63, 2
  %65 = add i32 10000000, %64
  %66 = load i32, i32* %4, align 4
  %67 = udiv i32 %65, %66
  store i32 %67, i32* %5, align 4
  %68 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %3, align 8
  %69 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i32, i32* %5, align 4
  %74 = mul i32 %73, 2
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %72, %62
  %76 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @sprint_frac(i8* %76, i32 %77, i32 1000)
  %79 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %80 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %79, i32 0, i32 0
  %81 = load i8*, i8** %6, align 8
  %82 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %3, align 8
  %83 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %88 = load i32, i32* %5, align 4
  %89 = udiv i32 %88, 10
  %90 = load i32, i32* %5, align 4
  %91 = urem i32 %90, 10
  %92 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %3, align 8
  %93 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %92, i32 0, i32 10
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)
  %98 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %3, align 8
  %99 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %98, i32 0, i32 9
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %104 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %3, align 8
  %105 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %104, i32 0, i32 8
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %110 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %3, align 8
  %111 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %116 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %3, align 8
  %117 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %122 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %3, align 8
  %123 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %128 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %3, align 8
  %129 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %134 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %3, align 8
  %135 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %140 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %141 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %3, align 8
  %142 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %80, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i8* %81, i8* %87, i32 %89, i32 %91, i8* %97, i8* %103, i8* %109, i8* %115, i8* %121, i8* %127, i8* %133, i8* %139, i8* %140, i64 %143)
  br label %155

145:                                              ; preds = %15, %1
  %146 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %147 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %146, i32 0, i32 0
  %148 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %3, align 8
  %149 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %154 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %147, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* %153)
  br label %155

155:                                              ; preds = %145, %75
  ret void
}

declare dso_local i32 @sprint_frac(i8*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
