; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_split_bd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_split_bd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_cmd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fcoe_bd_ctx* }
%struct.fcoe_bd_ctx = type { i32, i32, i64, i64 }

@BNX2FC_BD_SPLIT_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2fc_cmd*, i32, i32, i32)* @bnx2fc_split_bd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2fc_split_bd(%struct.bnx2fc_cmd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2fc_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fcoe_bd_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bnx2fc_cmd* %0, %struct.bnx2fc_cmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.fcoe_bd_ctx*, %struct.fcoe_bd_ctx** %15, align 8
  store %struct.fcoe_bd_ctx* %16, %struct.fcoe_bd_ctx** %9, align 8
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %28, %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @BNX2FC_BD_SPLIT_SZ, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @BNX2FC_BD_SPLIT_SZ, align 4
  store i32 %25, i32* %10, align 4
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.fcoe_bd_ctx*, %struct.fcoe_bd_ctx** %9, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.fcoe_bd_ctx, %struct.fcoe_bd_ctx* %30, i64 %34
  %36 = getelementptr inbounds %struct.fcoe_bd_ctx, %struct.fcoe_bd_ctx* %35, i32 0, i32 0
  store i32 %29, i32* %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = ashr i32 %37, 32
  %39 = load %struct.fcoe_bd_ctx*, %struct.fcoe_bd_ctx** %9, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.fcoe_bd_ctx, %struct.fcoe_bd_ctx* %39, i64 %43
  %45 = getelementptr inbounds %struct.fcoe_bd_ctx, %struct.fcoe_bd_ctx* %44, i32 0, i32 1
  store i32 %38, i32* %45, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.fcoe_bd_ctx*, %struct.fcoe_bd_ctx** %9, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.fcoe_bd_ctx, %struct.fcoe_bd_ctx* %48, i64 %52
  %54 = getelementptr inbounds %struct.fcoe_bd_ctx, %struct.fcoe_bd_ctx* %53, i32 0, i32 3
  store i64 %47, i64* %54, align 8
  %55 = load %struct.fcoe_bd_ctx*, %struct.fcoe_bd_ctx** %9, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.fcoe_bd_ctx, %struct.fcoe_bd_ctx* %55, i64 %59
  %61 = getelementptr inbounds %struct.fcoe_bd_ctx, %struct.fcoe_bd_ctx* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %17

70:                                               ; preds = %17
  %71 = load i32, i32* %11, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
