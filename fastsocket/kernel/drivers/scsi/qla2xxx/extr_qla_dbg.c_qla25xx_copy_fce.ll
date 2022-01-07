; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_dbg.c_qla25xx_copy_fce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_dbg.c_qla25xx_copy_fce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32, i64*, i32, i32 }
%struct.qla2xxx_fce_chain = type { i32, i32*, i8*, i8*, i8*, i8* }

@DUMP_CHAIN_FCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.qla_hw_data*, i8*, i32**)* @qla25xx_copy_fce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qla25xx_copy_fce(%struct.qla_hw_data* %0, i8* %1, i32** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.qla2xxx_fce_chain*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.qla2xxx_fce_chain*
  store %struct.qla2xxx_fce_chain* %12, %struct.qla2xxx_fce_chain** %10, align 8
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %14 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %4, align 8
  br label %95

19:                                               ; preds = %3
  %20 = load %struct.qla2xxx_fce_chain*, %struct.qla2xxx_fce_chain** %10, align 8
  %21 = getelementptr inbounds %struct.qla2xxx_fce_chain, %struct.qla2xxx_fce_chain* %20, i32 0, i32 0
  %22 = load i32**, i32*** %7, align 8
  store i32* %21, i32** %22, align 8
  %23 = load i32, i32* @DUMP_CHAIN_FCE, align 4
  %24 = call i32 @__constant_htonl(i32 %23)
  %25 = load %struct.qla2xxx_fce_chain*, %struct.qla2xxx_fce_chain** %10, align 8
  %26 = getelementptr inbounds %struct.qla2xxx_fce_chain, %struct.qla2xxx_fce_chain* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %28 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @fce_calc_size(i32 %29)
  %31 = add i64 48, %30
  %32 = call i8* @htonl(i64 %31)
  %33 = load %struct.qla2xxx_fce_chain*, %struct.qla2xxx_fce_chain** %10, align 8
  %34 = getelementptr inbounds %struct.qla2xxx_fce_chain, %struct.qla2xxx_fce_chain* %33, i32 0, i32 5
  store i8* %32, i8** %34, align 8
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @fce_calc_size(i32 %37)
  %39 = call i8* @htonl(i64 %38)
  %40 = load %struct.qla2xxx_fce_chain*, %struct.qla2xxx_fce_chain** %10, align 8
  %41 = getelementptr inbounds %struct.qla2xxx_fce_chain, %struct.qla2xxx_fce_chain* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %43 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @LSD(i32 %44)
  %46 = call i8* @htonl(i64 %45)
  %47 = load %struct.qla2xxx_fce_chain*, %struct.qla2xxx_fce_chain** %10, align 8
  %48 = getelementptr inbounds %struct.qla2xxx_fce_chain, %struct.qla2xxx_fce_chain* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %50 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @MSD(i32 %51)
  %53 = call i8* @htonl(i64 %52)
  %54 = load %struct.qla2xxx_fce_chain*, %struct.qla2xxx_fce_chain** %10, align 8
  %55 = getelementptr inbounds %struct.qla2xxx_fce_chain, %struct.qla2xxx_fce_chain* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.qla2xxx_fce_chain*, %struct.qla2xxx_fce_chain** %10, align 8
  %57 = getelementptr inbounds %struct.qla2xxx_fce_chain, %struct.qla2xxx_fce_chain* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %9, align 8
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %74, %19
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 8
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %64 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i8* @htonl(i64 %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  br label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %59

77:                                               ; preds = %59
  %78 = load i32*, i32** %9, align 8
  %79 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %80 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.qla2xxx_fce_chain*, %struct.qla2xxx_fce_chain** %10, align 8
  %83 = getelementptr inbounds %struct.qla2xxx_fce_chain, %struct.qla2xxx_fce_chain* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @ntohl(i8* %84)
  %86 = call i32 @memcpy(i32* %78, i32 %81, i32 %85)
  %87 = load i32*, i32** %9, align 8
  %88 = bitcast i32* %87 to i8*
  %89 = load %struct.qla2xxx_fce_chain*, %struct.qla2xxx_fce_chain** %10, align 8
  %90 = getelementptr inbounds %struct.qla2xxx_fce_chain, %struct.qla2xxx_fce_chain* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @ntohl(i8* %91)
  %93 = sext i32 %92 to i64
  %94 = getelementptr i8, i8* %88, i64 %93
  store i8* %94, i8** %4, align 8
  br label %95

95:                                               ; preds = %77, %17
  %96 = load i8*, i8** %4, align 8
  ret i8* %96
}

declare dso_local i32 @__constant_htonl(i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i64 @fce_calc_size(i32) #1

declare dso_local i64 @LSD(i32) #1

declare dso_local i64 @MSD(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ntohl(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
