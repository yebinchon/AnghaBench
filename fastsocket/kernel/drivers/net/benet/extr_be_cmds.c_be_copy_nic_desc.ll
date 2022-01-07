; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_copy_nic_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_copy_nic_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_resources = type { i64, i64, i32, i8*, i8*, i8*, i8*, i8* }
%struct.be_nic_res_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@BE_IF_CAP_FLAGS_WANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_resources*, %struct.be_nic_res_desc*)* @be_copy_nic_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_copy_nic_desc(%struct.be_resources* %0, %struct.be_nic_res_desc* %1) #0 {
  %3 = alloca %struct.be_resources*, align 8
  %4 = alloca %struct.be_nic_res_desc*, align 8
  store %struct.be_resources* %0, %struct.be_resources** %3, align 8
  store %struct.be_nic_res_desc* %1, %struct.be_nic_res_desc** %4, align 8
  %5 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %4, align 8
  %6 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @le16_to_cpu(i32 %7)
  %9 = load %struct.be_resources*, %struct.be_resources** %3, align 8
  %10 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %9, i32 0, i32 7
  store i8* %8, i8** %10, align 8
  %11 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %4, align 8
  %12 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @le16_to_cpu(i32 %13)
  %15 = load %struct.be_resources*, %struct.be_resources** %3, align 8
  %16 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %15, i32 0, i32 6
  store i8* %14, i8** %16, align 8
  %17 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %4, align 8
  %18 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @le16_to_cpu(i32 %19)
  %21 = load %struct.be_resources*, %struct.be_resources** %3, align 8
  %22 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %4, align 8
  %24 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @le16_to_cpu(i32 %25)
  %27 = load %struct.be_resources*, %struct.be_resources** %3, align 8
  %28 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %4, align 8
  %30 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @le16_to_cpu(i32 %31)
  %33 = ptrtoint i8* %32 to i64
  %34 = load %struct.be_resources*, %struct.be_resources** %3, align 8
  %35 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %4, align 8
  %37 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @le16_to_cpu(i32 %38)
  %40 = ptrtoint i8* %39 to i64
  %41 = load %struct.be_resources*, %struct.be_resources** %3, align 8
  %42 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %4, align 8
  %44 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le16_to_cpu(i32 %45)
  %47 = load %struct.be_resources*, %struct.be_resources** %3, align 8
  %48 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %4, align 8
  %50 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32_to_cpu(i32 %51)
  %53 = load i32, i32* @BE_IF_CAP_FLAGS_WANT, align 4
  %54 = and i32 %52, %53
  %55 = load %struct.be_resources*, %struct.be_resources** %3, align 8
  %56 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.be_resources*, %struct.be_resources** %3, align 8
  %58 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %2
  %62 = load %struct.be_resources*, %struct.be_resources** %3, align 8
  %63 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.be_resources*, %struct.be_resources** %3, align 8
  %66 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load %struct.be_resources*, %struct.be_resources** %3, align 8
  %71 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %72, 1
  store i64 %73, i64* %71, align 8
  br label %74

74:                                               ; preds = %69, %61, %2
  ret void
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
