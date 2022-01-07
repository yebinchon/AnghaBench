; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_macio_asic.c_macio_pci_add_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_macio_asic.c_macio_pci_add_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.macio_chip = type { %struct.device_node*, %struct.TYPE_5__ }
%struct.device_node = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.resource*, %struct.device }
%struct.device = type { i32 }
%struct.macio_dev = type { %struct.TYPE_6__, %struct.resource* }
%struct.TYPE_6__ = type { %struct.device, %struct.device_node* }

@iomem_resource = common dso_local global %struct.resource zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"media-bay\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"escc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macio_chip*)* @macio_pci_add_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macio_pci_add_devices(%struct.macio_chip* %0) #0 {
  %2 = alloca %struct.macio_chip*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.macio_dev*, align 8
  %6 = alloca %struct.macio_dev*, align 8
  %7 = alloca %struct.macio_dev*, align 8
  %8 = alloca %struct.macio_dev*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.resource*, align 8
  store %struct.macio_chip* %0, %struct.macio_chip** %2, align 8
  store %struct.macio_dev* null, %struct.macio_dev** %7, align 8
  store %struct.macio_dev* null, %struct.macio_dev** %8, align 8
  store %struct.device* null, %struct.device** %9, align 8
  store %struct.resource* @iomem_resource, %struct.resource** %10, align 8
  %11 = load %struct.macio_chip*, %struct.macio_chip** %2, align 8
  %12 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  %14 = call %struct.device_node* @of_node_get(%struct.device_node* %13)
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = icmp eq %struct.device_node* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %143

18:                                               ; preds = %1
  %19 = load %struct.macio_chip*, %struct.macio_chip** %2, align 8
  %20 = load %struct.device*, %struct.device** %9, align 8
  %21 = load %struct.device_node*, %struct.device_node** %4, align 8
  %22 = load %struct.resource*, %struct.resource** %10, align 8
  %23 = call %struct.macio_dev* @macio_add_one_device(%struct.macio_chip* %19, %struct.device* %20, %struct.device_node* %21, %struct.macio_dev* null, %struct.resource* %22)
  store %struct.macio_dev* %23, %struct.macio_dev** %5, align 8
  %24 = load %struct.macio_dev*, %struct.macio_dev** %5, align 8
  %25 = icmp eq %struct.macio_dev* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %143

27:                                               ; preds = %18
  %28 = load %struct.macio_dev*, %struct.macio_dev** %5, align 8
  %29 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %28, i32 0, i32 1
  %30 = load %struct.resource*, %struct.resource** %29, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i64 0
  store %struct.resource* %31, %struct.resource** %10, align 8
  store %struct.device_node* null, %struct.device_node** %3, align 8
  br label %32

32:                                               ; preds = %75, %41, %27
  %33 = load %struct.device_node*, %struct.device_node** %4, align 8
  %34 = load %struct.device_node*, %struct.device_node** %3, align 8
  %35 = call %struct.device_node* @of_get_next_child(%struct.device_node* %33, %struct.device_node* %34)
  store %struct.device_node* %35, %struct.device_node** %3, align 8
  %36 = icmp ne %struct.device_node* %35, null
  br i1 %36, label %37, label %76

37:                                               ; preds = %32
  %38 = load %struct.device_node*, %struct.device_node** %3, align 8
  %39 = call i64 @macio_skip_device(%struct.device_node* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %32

42:                                               ; preds = %37
  %43 = load %struct.device_node*, %struct.device_node** %3, align 8
  %44 = call %struct.device_node* @of_node_get(%struct.device_node* %43)
  %45 = load %struct.macio_chip*, %struct.macio_chip** %2, align 8
  %46 = load %struct.macio_dev*, %struct.macio_dev** %5, align 8
  %47 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.device_node*, %struct.device_node** %3, align 8
  %50 = load %struct.resource*, %struct.resource** %10, align 8
  %51 = call %struct.macio_dev* @macio_add_one_device(%struct.macio_chip* %45, %struct.device* %48, %struct.device_node* %49, %struct.macio_dev* null, %struct.resource* %50)
  store %struct.macio_dev* %51, %struct.macio_dev** %6, align 8
  %52 = load %struct.macio_dev*, %struct.macio_dev** %6, align 8
  %53 = icmp eq %struct.macio_dev* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load %struct.device_node*, %struct.device_node** %3, align 8
  %56 = call i32 @of_node_put(%struct.device_node* %55)
  br label %75

57:                                               ; preds = %42
  %58 = load %struct.device_node*, %struct.device_node** %3, align 8
  %59 = getelementptr inbounds %struct.device_node, %struct.device_node* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @strncmp(i32 %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load %struct.macio_dev*, %struct.macio_dev** %6, align 8
  store %struct.macio_dev* %64, %struct.macio_dev** %7, align 8
  br label %74

65:                                               ; preds = %57
  %66 = load %struct.device_node*, %struct.device_node** %3, align 8
  %67 = getelementptr inbounds %struct.device_node, %struct.device_node* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @strncmp(i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load %struct.macio_dev*, %struct.macio_dev** %6, align 8
  store %struct.macio_dev* %72, %struct.macio_dev** %8, align 8
  br label %73

73:                                               ; preds = %71, %65
  br label %74

74:                                               ; preds = %73, %63
  br label %75

75:                                               ; preds = %74, %54
  br label %32

76:                                               ; preds = %32
  %77 = load %struct.macio_dev*, %struct.macio_dev** %7, align 8
  %78 = icmp ne %struct.macio_dev* %77, null
  br i1 %78, label %79, label %110

79:                                               ; preds = %76
  store %struct.device_node* null, %struct.device_node** %3, align 8
  br label %80

80:                                               ; preds = %108, %92, %79
  %81 = load %struct.macio_dev*, %struct.macio_dev** %7, align 8
  %82 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load %struct.device_node*, %struct.device_node** %83, align 8
  %85 = load %struct.device_node*, %struct.device_node** %3, align 8
  %86 = call %struct.device_node* @of_get_next_child(%struct.device_node* %84, %struct.device_node* %85)
  store %struct.device_node* %86, %struct.device_node** %3, align 8
  %87 = icmp ne %struct.device_node* %86, null
  br i1 %87, label %88, label %109

88:                                               ; preds = %80
  %89 = load %struct.device_node*, %struct.device_node** %3, align 8
  %90 = call i64 @macio_skip_device(%struct.device_node* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %80

93:                                               ; preds = %88
  %94 = load %struct.device_node*, %struct.device_node** %3, align 8
  %95 = call %struct.device_node* @of_node_get(%struct.device_node* %94)
  %96 = load %struct.macio_chip*, %struct.macio_chip** %2, align 8
  %97 = load %struct.macio_dev*, %struct.macio_dev** %7, align 8
  %98 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.device_node*, %struct.device_node** %3, align 8
  %101 = load %struct.macio_dev*, %struct.macio_dev** %7, align 8
  %102 = load %struct.resource*, %struct.resource** %10, align 8
  %103 = call %struct.macio_dev* @macio_add_one_device(%struct.macio_chip* %96, %struct.device* %99, %struct.device_node* %100, %struct.macio_dev* %101, %struct.resource* %102)
  %104 = icmp eq %struct.macio_dev* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %93
  %106 = load %struct.device_node*, %struct.device_node** %3, align 8
  %107 = call i32 @of_node_put(%struct.device_node* %106)
  br label %108

108:                                              ; preds = %105, %93
  br label %80

109:                                              ; preds = %80
  br label %110

110:                                              ; preds = %109, %76
  %111 = load %struct.macio_dev*, %struct.macio_dev** %8, align 8
  %112 = icmp ne %struct.macio_dev* %111, null
  br i1 %112, label %113, label %143

113:                                              ; preds = %110
  store %struct.device_node* null, %struct.device_node** %3, align 8
  br label %114

114:                                              ; preds = %141, %126, %113
  %115 = load %struct.macio_dev*, %struct.macio_dev** %8, align 8
  %116 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load %struct.device_node*, %struct.device_node** %117, align 8
  %119 = load %struct.device_node*, %struct.device_node** %3, align 8
  %120 = call %struct.device_node* @of_get_next_child(%struct.device_node* %118, %struct.device_node* %119)
  store %struct.device_node* %120, %struct.device_node** %3, align 8
  %121 = icmp ne %struct.device_node* %120, null
  br i1 %121, label %122, label %142

122:                                              ; preds = %114
  %123 = load %struct.device_node*, %struct.device_node** %3, align 8
  %124 = call i64 @macio_skip_device(%struct.device_node* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %114

127:                                              ; preds = %122
  %128 = load %struct.device_node*, %struct.device_node** %3, align 8
  %129 = call %struct.device_node* @of_node_get(%struct.device_node* %128)
  %130 = load %struct.macio_chip*, %struct.macio_chip** %2, align 8
  %131 = load %struct.macio_dev*, %struct.macio_dev** %8, align 8
  %132 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load %struct.device_node*, %struct.device_node** %3, align 8
  %135 = load %struct.resource*, %struct.resource** %10, align 8
  %136 = call %struct.macio_dev* @macio_add_one_device(%struct.macio_chip* %130, %struct.device* %133, %struct.device_node* %134, %struct.macio_dev* null, %struct.resource* %135)
  %137 = icmp eq %struct.macio_dev* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %127
  %139 = load %struct.device_node*, %struct.device_node** %3, align 8
  %140 = call i32 @of_node_put(%struct.device_node* %139)
  br label %141

141:                                              ; preds = %138, %127
  br label %114

142:                                              ; preds = %114
  br label %143

143:                                              ; preds = %17, %26, %142, %110
  ret void
}

declare dso_local %struct.device_node* @of_node_get(%struct.device_node*) #1

declare dso_local %struct.macio_dev* @macio_add_one_device(%struct.macio_chip*, %struct.device*, %struct.device_node*, %struct.macio_dev*, %struct.resource*) #1

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #1

declare dso_local i64 @macio_skip_device(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
