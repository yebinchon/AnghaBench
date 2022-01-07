; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_saa7146_res_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_saa7146_res_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_fh = type { i32, %struct.saa7146_dev* }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"res: put 0x%02x, cur:0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7146_res_free(%struct.saa7146_fh* %0, i32 %1) #0 {
  %3 = alloca %struct.saa7146_fh*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.saa7146_dev*, align 8
  %6 = alloca %struct.saa7146_vv*, align 8
  store %struct.saa7146_fh* %0, %struct.saa7146_fh** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %8 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %7, i32 0, i32 1
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  store %struct.saa7146_dev* %9, %struct.saa7146_dev** %5, align 8
  %10 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %11 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %10, i32 0, i32 0
  %12 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  store %struct.saa7146_vv* %12, %struct.saa7146_vv** %6, align 8
  %13 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %14 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %25 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* %4, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %31 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %36 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = zext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @DEB_D(i8* %39)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DEB_D(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
