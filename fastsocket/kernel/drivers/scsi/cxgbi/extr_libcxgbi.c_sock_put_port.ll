; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_sock_put_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_sock_put_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i64, %struct.TYPE_3__, %struct.cxgbi_device* }
%struct.TYPE_3__ = type { i64 }
%struct.cxgbi_device = type { %struct.TYPE_4__**, %struct.cxgbi_ports_map }
%struct.TYPE_4__ = type { i32 }
%struct.cxgbi_ports_map = type { i32, i32, i32, i32, i32** }

@.str = private unnamed_addr constant [34 x i8] c"cdev 0x%p, p#%u %s, port %u OOR.\0A\00", align 1
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cdev 0x%p, p#%u %s, release %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_sock*)* @sock_put_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sock_put_port(%struct.cxgbi_sock* %0) #0 {
  %2 = alloca %struct.cxgbi_sock*, align 8
  %3 = alloca %struct.cxgbi_device*, align 8
  %4 = alloca %struct.cxgbi_ports_map*, align 8
  %5 = alloca i32, align 4
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %2, align 8
  %6 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %7 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %6, i32 0, i32 2
  %8 = load %struct.cxgbi_device*, %struct.cxgbi_device** %7, align 8
  store %struct.cxgbi_device* %8, %struct.cxgbi_device** %3, align 8
  %9 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %10 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %9, i32 0, i32 1
  store %struct.cxgbi_ports_map* %10, %struct.cxgbi_ports_map** %4, align 8
  %11 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %12 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %99

16:                                               ; preds = %1
  %17 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %18 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @ntohs(i64 %20)
  %22 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %4, align 8
  %23 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %21, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %27 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %16
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %4, align 8
  %34 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %31, %16
  %38 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %39 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %40 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %43 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %46 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %53 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @ntohs(i64 %55)
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_device* %38, i64 %41, i32 %51, i32 %56)
  br label %99

58:                                               ; preds = %31
  %59 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %4, align 8
  %60 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %59, i32 0, i32 2
  %61 = call i32 @spin_lock_bh(i32* %60)
  %62 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %4, align 8
  %63 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %62, i32 0, i32 4
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  store i32* null, i32** %67, align 8
  %68 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %4, align 8
  %69 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %4, align 8
  %73 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %72, i32 0, i32 2
  %74 = call i32 @spin_unlock_bh(i32* %73)
  %75 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %76 = shl i32 1, %75
  %77 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %78 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %79 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %82 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %82, align 8
  %84 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %85 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %83, i64 %86
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %4, align 8
  %92 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %93, %94
  %96 = call i32 @log_debug(i32 %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.cxgbi_device* %77, i64 %80, i32 %90, i32 %95)
  %97 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %98 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %97)
  br label %99

99:                                               ; preds = %37, %58, %1
  ret void
}

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @pr_err(i8*, %struct.cxgbi_device*, i64, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_device*, i64, i32, i32) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
