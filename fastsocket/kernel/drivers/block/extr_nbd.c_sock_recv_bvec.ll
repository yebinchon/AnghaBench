; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nbd.c_sock_recv_bvec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nbd.c_sock_recv_bvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_device = type { i32 }
%struct.bio_vec = type { i32, i32, i32 }

@MSG_WAITALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbd_device*, %struct.bio_vec*)* @sock_recv_bvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_recv_bvec(%struct.nbd_device* %0, %struct.bio_vec* %1) #0 {
  %3 = alloca %struct.nbd_device*, align 8
  %4 = alloca %struct.bio_vec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.nbd_device* %0, %struct.nbd_device** %3, align 8
  store %struct.bio_vec* %1, %struct.bio_vec** %4, align 8
  %7 = load %struct.bio_vec*, %struct.bio_vec** %4, align 8
  %8 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @kmap(i32 %9)
  store i8* %10, i8** %6, align 8
  %11 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.bio_vec*, %struct.bio_vec** %4, align 8
  %14 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr i8, i8* %12, i64 %16
  %18 = load %struct.bio_vec*, %struct.bio_vec** %4, align 8
  %19 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MSG_WAITALL, align 4
  %22 = call i32 @sock_xmit(%struct.nbd_device* %11, i32 0, i8* %17, i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.bio_vec*, %struct.bio_vec** %4, align 8
  %24 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @kunmap(i32 %25)
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i8* @kmap(i32) #1

declare dso_local i32 @sock_xmit(%struct.nbd_device*, i32, i8*, i32, i32) #1

declare dso_local i32 @kunmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
