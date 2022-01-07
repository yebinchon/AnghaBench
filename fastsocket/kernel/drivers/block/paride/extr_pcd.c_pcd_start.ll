; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.pcd_start.rd_cmd = private unnamed_addr constant [12 x i8] c"\A8\00\00\00\00\00\00\00\00\01\00\00", align 1
@pcd_sector = common dso_local global i32 0, align 4
@pcd_bufblk = common dso_local global i32 0, align 4
@pcd_current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"read block\00", align 1
@EIO = common dso_local global i32 0, align 4
@do_pcd_read_drq = common dso_local global i32 0, align 4
@pcd_ready = common dso_local global i32 0, align 4
@PCD_TMO = common dso_local global i32 0, align 4
@nice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pcd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcd_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [12 x i8], align 1
  %4 = bitcast [12 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.pcd_start.rd_cmd, i32 0, i32 0), i64 12, i1 false)
  %5 = load i32, i32* @pcd_sector, align 4
  %6 = sdiv i32 %5, 4
  store i32 %6, i32* @pcd_bufblk, align 4
  %7 = load i32, i32* @pcd_bufblk, align 4
  store i32 %7, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %21, %0
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = and i32 %12, 255
  %14 = trunc i32 %13 to i8
  %15 = load i32, i32* %2, align 4
  %16 = sub nsw i32 5, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 %17
  store i8 %14, i8* %18, align 1
  %19 = load i32, i32* %1, align 4
  %20 = ashr i32 %19, 8
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %11
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %8

24:                                               ; preds = %8
  %25 = load i32, i32* @pcd_current, align 4
  %26 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %27 = call i64 @pcd_command(i32 %25, i8* %26, i32 2048, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  store i32 -1, i32* @pcd_bufblk, align 4
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @next_request(i32 %31)
  br label %40

33:                                               ; preds = %24
  %34 = call i32 @mdelay(i32 1)
  %35 = load i32, i32* @do_pcd_read_drq, align 4
  %36 = load i32, i32* @pcd_ready, align 4
  %37 = load i32, i32* @PCD_TMO, align 4
  %38 = load i32, i32* @nice, align 4
  %39 = call i32 @ps_set_intr(i32 %35, i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %29
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @pcd_command(i32, i8*, i32, i8*) #2

declare dso_local i32 @next_request(i32) #2

declare dso_local i32 @mdelay(i32) #2

declare dso_local i32 @ps_set_intr(i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
