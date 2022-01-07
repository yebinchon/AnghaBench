; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_manager.c_pnp_assign_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_manager.c_pnp_assign_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.pnp_port = type { i32, i64, i64, i64, i64 }
%struct.resource = type { i64, i64, i32 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"  io %d already set to %#llx-%#llx flags %#lx\0A\00", align 1
@IORESOURCE_AUTO = common dso_local global i32 0, align 4
@IORESOURCE_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"  io %d disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"  couldn't assign io %d (min %#llx max %#llx)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*, %struct.pnp_port*, i32)* @pnp_assign_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnp_assign_port(%struct.pnp_dev* %0, %struct.pnp_port* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnp_dev*, align 8
  %6 = alloca %struct.pnp_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.resource, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %5, align 8
  store %struct.pnp_port* %1, %struct.pnp_port** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %11 = load i32, i32* @IORESOURCE_IO, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %10, i32 %11, i32 %12)
  store %struct.resource* %13, %struct.resource** %8, align 8
  %14 = load %struct.resource*, %struct.resource** %8, align 8
  %15 = icmp ne %struct.resource* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %18 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.resource*, %struct.resource** %8, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.resource*, %struct.resource** %8, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.resource*, %struct.resource** %8, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %22, i64 %25, i32 %28)
  store i32 0, i32* %4, align 4
  br label %135

30:                                               ; preds = %3
  store %struct.resource* %9, %struct.resource** %8, align 8
  %31 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %32 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IORESOURCE_AUTO, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.resource*, %struct.resource** %8, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.resource*, %struct.resource** %8, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.resource*, %struct.resource** %8, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %43 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %30
  %47 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %48 = load %struct.resource*, %struct.resource** %8, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %53 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %7, align 4
  %55 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %123

56:                                               ; preds = %30
  %57 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %58 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.resource*, %struct.resource** %8, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.resource*, %struct.resource** %8, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %66 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = sub nsw i64 %68, 1
  %70 = load %struct.resource*, %struct.resource** %8, align 8
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %121, %56
  %73 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %74 = load %struct.resource*, %struct.resource** %8, align 8
  %75 = call i32 @pnp_check_port(%struct.pnp_dev* %73, %struct.resource* %74)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br i1 %77, label %78, label %122

78:                                               ; preds = %72
  %79 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %80 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.resource*, %struct.resource** %8, align 8
  %83 = getelementptr inbounds %struct.resource, %struct.resource* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load %struct.resource*, %struct.resource** %8, align 8
  %87 = getelementptr inbounds %struct.resource, %struct.resource* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %90 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %88, %91
  %93 = sub nsw i64 %92, 1
  %94 = load %struct.resource*, %struct.resource** %8, align 8
  %95 = getelementptr inbounds %struct.resource, %struct.resource* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load %struct.resource*, %struct.resource** %8, align 8
  %97 = getelementptr inbounds %struct.resource, %struct.resource* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %100 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %98, %101
  br i1 %102, label %108, label %103

103:                                              ; preds = %78
  %104 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %105 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %121, label %108

108:                                              ; preds = %103, %78
  %109 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %110 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %109, i32 0, i32 0
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %113 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %116 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %110, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %111, i64 %114, i64 %117)
  %119 = load i32, i32* @EBUSY, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %135

121:                                              ; preds = %103
  br label %72

122:                                              ; preds = %72
  br label %123

123:                                              ; preds = %122, %46
  %124 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %125 = load %struct.resource*, %struct.resource** %8, align 8
  %126 = getelementptr inbounds %struct.resource, %struct.resource* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.resource*, %struct.resource** %8, align 8
  %129 = getelementptr inbounds %struct.resource, %struct.resource* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.resource*, %struct.resource** %8, align 8
  %132 = getelementptr inbounds %struct.resource, %struct.resource* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @pnp_add_io_resource(%struct.pnp_dev* %124, i64 %127, i64 %130, i32 %133)
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %123, %108, %16
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.resource* @pnp_get_resource(%struct.pnp_dev*, i32, i32) #1

declare dso_local i32 @pnp_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @pnp_check_port(%struct.pnp_dev*, %struct.resource*) #1

declare dso_local i32 @pnp_add_io_resource(%struct.pnp_dev*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
