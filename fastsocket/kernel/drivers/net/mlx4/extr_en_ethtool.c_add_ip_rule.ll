; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_add_ip_rule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_add_ip_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32 }
%struct.ethtool_rxnfc = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.ethtool_usrip4_spec }
%struct.ethtool_usrip4_spec = type { i64, i64 }
%struct.list_head = type { i32 }
%struct.mlx4_spec_list = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i8*, i32, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Fail to alloc ethtool rule.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_RULE_ID_IPV4 = common dso_local global i32 0, align 4
@EN_ETHTOOL_WORD_MASK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, %struct.ethtool_rxnfc*, %struct.list_head*)* @add_ip_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_ip_rule(%struct.mlx4_en_priv* %0, %struct.ethtool_rxnfc* %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca %struct.ethtool_rxnfc*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_spec_list*, align 8
  %10 = alloca %struct.mlx4_spec_list*, align 8
  %11 = alloca %struct.ethtool_usrip4_spec*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %5, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store %struct.mlx4_spec_list* null, %struct.mlx4_spec_list** %9, align 8
  store %struct.mlx4_spec_list* null, %struct.mlx4_spec_list** %10, align 8
  %12 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %13 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.ethtool_usrip4_spec* %15, %struct.ethtool_usrip4_spec** %11, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.mlx4_spec_list* @kzalloc(i32 48, i32 %16)
  store %struct.mlx4_spec_list* %17, %struct.mlx4_spec_list** %10, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mlx4_spec_list* @kzalloc(i32 48, i32 %18)
  store %struct.mlx4_spec_list* %19, %struct.mlx4_spec_list** %9, align 8
  %20 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %9, align 8
  %21 = icmp ne %struct.mlx4_spec_list* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %10, align 8
  %24 = icmp ne %struct.mlx4_spec_list* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %22, %3
  %26 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %27 = call i32 @en_err(%struct.mlx4_en_priv* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %91

30:                                               ; preds = %22
  %31 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %32 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %33 = load %struct.list_head*, %struct.list_head** %7, align 8
  %34 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %9, align 8
  %35 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %36 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @mlx4_en_ethtool_add_mac_rule_by_ipv4(%struct.mlx4_en_priv* %31, %struct.ethtool_rxnfc* %32, %struct.list_head* %33, %struct.mlx4_spec_list* %34, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %91

45:                                               ; preds = %30
  %46 = load i32, i32* @MLX4_NET_TRANS_RULE_ID_IPV4, align 4
  %47 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %10, align 8
  %48 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %50 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %10, align 8
  %56 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 8
  %58 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %11, align 8
  %59 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %45
  %63 = load i8*, i8** @EN_ETHTOOL_WORD_MASK, align 8
  %64 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %10, align 8
  %65 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  store i8* %63, i8** %66, align 8
  br label %67

67:                                               ; preds = %62, %45
  %68 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %69 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %10, align 8
  %75 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 8
  %77 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %11, align 8
  %78 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %67
  %82 = load i8*, i8** @EN_ETHTOOL_WORD_MASK, align 8
  %83 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %10, align 8
  %84 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i8* %82, i8** %85, align 8
  br label %86

86:                                               ; preds = %81, %67
  %87 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %10, align 8
  %88 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %87, i32 0, i32 0
  %89 = load %struct.list_head*, %struct.list_head** %7, align 8
  %90 = call i32 @list_add_tail(i32* %88, %struct.list_head* %89)
  store i32 0, i32* %4, align 4
  br label %97

91:                                               ; preds = %44, %25
  %92 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %9, align 8
  %93 = call i32 @kfree(%struct.mlx4_spec_list* %92)
  %94 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %10, align 8
  %95 = call i32 @kfree(%struct.mlx4_spec_list* %94)
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %91, %86
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.mlx4_spec_list* @kzalloc(i32, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_en_ethtool_add_mac_rule_by_ipv4(%struct.mlx4_en_priv*, %struct.ethtool_rxnfc*, %struct.list_head*, %struct.mlx4_spec_list*, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @kfree(%struct.mlx4_spec_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
