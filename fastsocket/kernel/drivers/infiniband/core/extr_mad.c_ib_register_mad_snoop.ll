; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_ib_register_mad_snoop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_ib_register_mad_snoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent = type { i32, i32, i8*, i64, i64, %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.ib_mad_port_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ib_mad_snoop_private = type { i32, %struct.ib_mad_agent, i32, i32, i32, %struct.TYPE_2__* }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mad_agent* @ib_register_mad_snoop(%struct.ib_device* %0, i32 %1, i32 %2, i32 %3, i64 %4, i64 %5, i8* %6) #0 {
  %8 = alloca %struct.ib_mad_agent*, align 8
  %9 = alloca %struct.ib_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.ib_mad_port_private*, align 8
  %17 = alloca %struct.ib_mad_agent*, align 8
  %18 = alloca %struct.ib_mad_snoop_private*, align 8
  %19 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i8* %6, i8** %15, align 8
  %20 = load i32, i32* %12, align 4
  %21 = call i64 @is_snooping_sends(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %7
  %24 = load i64, i64* %13, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23, %7
  %27 = load i32, i32* %12, align 4
  %28 = call i64 @is_snooping_recvs(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i64, i64* %14, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30, %23
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.ib_mad_agent* @ERR_PTR(i32 %35)
  store %struct.ib_mad_agent* %36, %struct.ib_mad_agent** %17, align 8
  br label %139

37:                                               ; preds = %30, %26
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @get_spl_qp_index(i32 %38)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.ib_mad_agent* @ERR_PTR(i32 %44)
  store %struct.ib_mad_agent* %45, %struct.ib_mad_agent** %17, align 8
  br label %139

46:                                               ; preds = %37
  %47 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call %struct.ib_mad_port_private* @ib_get_mad_port(%struct.ib_device* %47, i32 %48)
  store %struct.ib_mad_port_private* %49, %struct.ib_mad_port_private** %16, align 8
  %50 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %16, align 8
  %51 = icmp ne %struct.ib_mad_port_private* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.ib_mad_agent* @ERR_PTR(i32 %54)
  store %struct.ib_mad_agent* %55, %struct.ib_mad_agent** %17, align 8
  br label %139

56:                                               ; preds = %46
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.ib_mad_snoop_private* @kzalloc(i32 72, i32 %57)
  store %struct.ib_mad_snoop_private* %58, %struct.ib_mad_snoop_private** %18, align 8
  %59 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %60 = icmp ne %struct.ib_mad_snoop_private* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  %64 = call %struct.ib_mad_agent* @ERR_PTR(i32 %63)
  store %struct.ib_mad_agent* %64, %struct.ib_mad_agent** %17, align 8
  br label %139

65:                                               ; preds = %56
  %66 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %16, align 8
  %67 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %19, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %73 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %72, i32 0, i32 5
  store %struct.TYPE_2__* %71, %struct.TYPE_2__** %73, align 8
  %74 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %75 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %76 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %76, i32 0, i32 5
  store %struct.ib_device* %74, %struct.ib_device** %77, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %80 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %80, i32 0, i32 4
  store i64 %78, i64* %81, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %84 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %84, i32 0, i32 3
  store i64 %82, i64* %85, align 8
  %86 = load i8*, i8** %15, align 8
  %87 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %88 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %88, i32 0, i32 2
  store i8* %86, i8** %89, align 8
  %90 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %16, align 8
  %91 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %19, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %99 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %103 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %107 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %109 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %108, i32 0, i32 4
  %110 = call i32 @init_completion(i32* %109)
  %111 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %16, align 8
  %112 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %19, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %118 = call i32 @register_snoop_agent(%struct.TYPE_2__* %116, %struct.ib_mad_snoop_private* %117)
  %119 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %120 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %122 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %65
  %126 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %127 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call %struct.ib_mad_agent* @ERR_PTR(i32 %128)
  store %struct.ib_mad_agent* %129, %struct.ib_mad_agent** %17, align 8
  br label %136

130:                                              ; preds = %65
  %131 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %132 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %131, i32 0, i32 2
  %133 = call i32 @atomic_set(i32* %132, i32 1)
  %134 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %135 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %134, i32 0, i32 1
  store %struct.ib_mad_agent* %135, %struct.ib_mad_agent** %8, align 8
  br label %141

136:                                              ; preds = %125
  %137 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %138 = call i32 @kfree(%struct.ib_mad_snoop_private* %137)
  br label %139

139:                                              ; preds = %136, %61, %52, %42, %33
  %140 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %17, align 8
  store %struct.ib_mad_agent* %140, %struct.ib_mad_agent** %8, align 8
  br label %141

141:                                              ; preds = %139, %130
  %142 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %8, align 8
  ret %struct.ib_mad_agent* %142
}

declare dso_local i64 @is_snooping_sends(i32) #1

declare dso_local i64 @is_snooping_recvs(i32) #1

declare dso_local %struct.ib_mad_agent* @ERR_PTR(i32) #1

declare dso_local i32 @get_spl_qp_index(i32) #1

declare dso_local %struct.ib_mad_port_private* @ib_get_mad_port(%struct.ib_device*, i32) #1

declare dso_local %struct.ib_mad_snoop_private* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @register_snoop_agent(%struct.TYPE_2__*, %struct.ib_mad_snoop_private*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kfree(%struct.ib_mad_snoop_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
