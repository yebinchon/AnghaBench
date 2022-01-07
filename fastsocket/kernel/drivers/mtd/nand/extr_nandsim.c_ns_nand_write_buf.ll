; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_ns_nand_write_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_ns_nand_write_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.nandsim = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.nand_chip = type { i64 }

@STATE_DATAIN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"write_buf: data input isn't expected, state is %s, switch to STATE_READY\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"write_buf: too many input bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"write_buf: %d bytes were written\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32*, i32)* @ns_nand_write_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ns_nand_write_buf(%struct.mtd_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nandsim*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %9 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.nand_chip*
  %12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.nandsim*
  store %struct.nandsim* %14, %struct.nandsim** %7, align 8
  %15 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %16 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @STATE_DATAIN_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %3
  %22 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %23 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @get_state_name(i32 %24)
  %26 = call i32 (i8*, ...) @NS_ERR(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %28 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %29 = call i32 @NS_STATUS_FAILED(%struct.nandsim* %28)
  %30 = call i32 @switch_to_ready_state(%struct.nandsim* %27, i32 %29)
  br label %85

31:                                               ; preds = %3
  %32 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %33 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %40 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %38, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %31
  %45 = call i32 (i8*, ...) @NS_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %47 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %48 = call i32 @NS_STATUS_FAILED(%struct.nandsim* %47)
  %49 = call i32 @switch_to_ready_state(%struct.nandsim* %46, i32 %48)
  br label %85

50:                                               ; preds = %31
  %51 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %52 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %56 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %54, %58
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @memcpy(i64 %59, i32* %60, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %66 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, %64
  store i64 %69, i64* %67, align 8
  %70 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %71 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %75 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %73, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %50
  %80 = load %struct.nandsim*, %struct.nandsim** %7, align 8
  %81 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @NS_DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %83)
  br label %85

85:                                               ; preds = %21, %44, %79, %50
  ret void
}

declare dso_local i32 @NS_ERR(i8*, ...) #1

declare dso_local i32 @get_state_name(i32) #1

declare dso_local i32 @switch_to_ready_state(%struct.nandsim*, i32) #1

declare dso_local i32 @NS_STATUS_FAILED(%struct.nandsim*) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @NS_DBG(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
