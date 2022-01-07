; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libsrp.c_srp_transfer_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libsrp.c_srp_transfer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.srp_cmd = type { i32, i32, i32 }
%struct.srp_direct_buf = type { i32 }
%struct.srp_indirect_buf = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown format %d %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @srp_transfer_data(%struct.scsi_cmnd* %0, %struct.srp_cmd* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.srp_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.srp_direct_buf*, align 8
  %12 = alloca %struct.srp_indirect_buf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %6, align 8
  store %struct.srp_cmd* %1, %struct.srp_cmd** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %15, align 4
  %17 = load %struct.srp_cmd*, %struct.srp_cmd** %7, align 8
  %18 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 4
  store i32 %20, i32* %14, align 4
  %21 = load %struct.srp_cmd*, %struct.srp_cmd** %7, align 8
  %22 = call i32 @srp_cmd_direction(%struct.srp_cmd* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %5
  %27 = load %struct.srp_cmd*, %struct.srp_cmd** %7, align 8
  %28 = call i64 @data_out_desc_size(%struct.srp_cmd* %27)
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %26, %5
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @DMA_TO_DEVICE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.srp_cmd*, %struct.srp_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 4
  store i32 %41, i32* %16, align 4
  br label %47

42:                                               ; preds = %33
  %43 = load %struct.srp_cmd*, %struct.srp_cmd** %7, align 8
  %44 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 15
  store i32 %46, i32* %16, align 4
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %16, align 4
  switch i32 %48, label %81 [
    i32 128, label %49
    i32 130, label %50
    i32 129, label %65
  ]

49:                                               ; preds = %47
  br label %87

50:                                               ; preds = %47
  %51 = load %struct.srp_cmd*, %struct.srp_cmd** %7, align 8
  %52 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to %struct.srp_direct_buf*
  store %struct.srp_direct_buf* %57, %struct.srp_direct_buf** %11, align 8
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %59 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %11, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @srp_direct_data(%struct.scsi_cmnd* %58, %struct.srp_direct_buf* %59, i32 %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %15, align 4
  br label %87

65:                                               ; preds = %47
  %66 = load %struct.srp_cmd*, %struct.srp_cmd** %7, align 8
  %67 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to %struct.srp_indirect_buf*
  store %struct.srp_indirect_buf* %72, %struct.srp_indirect_buf** %12, align 8
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %74 = load %struct.srp_cmd*, %struct.srp_cmd** %7, align 8
  %75 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %12, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @srp_indirect_data(%struct.scsi_cmnd* %73, %struct.srp_cmd* %74, %struct.srp_indirect_buf* %75, i32 %76, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %15, align 4
  br label %87

81:                                               ; preds = %47
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @eprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %81, %65, %50, %49
  %88 = load i32, i32* %15, align 4
  ret i32 %88
}

declare dso_local i32 @srp_cmd_direction(%struct.srp_cmd*) #1

declare dso_local i64 @data_out_desc_size(%struct.srp_cmd*) #1

declare dso_local i32 @srp_direct_data(%struct.scsi_cmnd*, %struct.srp_direct_buf*, i32, i32, i32, i32) #1

declare dso_local i32 @srp_indirect_data(%struct.scsi_cmnd*, %struct.srp_cmd*, %struct.srp_indirect_buf*, i32, i32, i32, i32) #1

declare dso_local i32 @eprintk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
